/*******************************************************************************
**
**      GSC-18128-1, "Core Flight Executive Version 6.7"
**
**      Copyright (c) 2006-2019 United States Government as represented by
**      the Administrator of the National Aeronautics and Space Administration.
**      All Rights Reserved.
**
**      Licensed under the Apache License, Version 2.0 (the "License");
**      you may not use this file except in compliance with the License.
**      You may obtain a copy of the License at
**
**        http://www.apache.org/licenses/LICENSE-2.0
**
**      Unless required by applicable law or agreed to in writing, software
**      distributed under the License is distributed on an "AS IS" BASIS,
**      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
**      See the License for the specific language governing permissions and
**      limitations under the License.
**
** File: MY_app.c
**
** Purpose:
**   This file contains the source code for the MY App.
**
*******************************************************************************/

#include <pthread.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <time.h>

#include <rtems.h>
#include <bsp.h>


#include <bsp/i2c.h>




/*
** Include Files:
*/
#include "my_app_events.h"
#include "my_app_version.h"
#include "my_app.h"
#include "my_app_table.h"

/* The sample_lib module provides the SAMPLE_LIB_Function() prototype */
#include <string.h>
#include "sample_lib.h"

/*
** global data
*/
MY_APP_Data_t MY_APP_Data;

struct timespec time_msg = {0,400000000};
int fd_i2c = -1;
#define MSG_LEN    9
#define SLAVE_ADDR 0x8
char request[11];
char answer[11];
int porcentajeLuminosidad = 0;
int umbralLuminosidad = 40; //procentaje umbral de luminosidad que supone un riesgo

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  * *  * * * * **/
/* MY_APP_Main() -- Application entry point and main process loop         */
/*                                                                            */
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  * *  * * * * **/
void MY_APP_Main(void)
{
    int32            status;
    CFE_SB_Buffer_t *SBBufPtr;

    /*
    ** Create the first Performance Log entry
    */
    CFE_ES_PerfLogEntry(MY_APP_PERF_ID);

    /*
    ** Perform application specific initialization
    ** If the Initialization fails, set the RunStatus to
    ** CFE_ES_RunStatus_APP_ERROR and the App will not enter the RunLoop
    */
    status = MY_APP_Init();
    if (status != CFE_SUCCESS)
    {
        MY_APP_Data.RunStatus = CFE_ES_RunStatus_APP_ERROR;
    }


/*
    // Init the i2C driver
    rpi_i2c_init();

    // bus registering, this init the ports needed for the conexion
    // and register the device under /dev/i2c
    rpi_i2c_register_bus("/dev/i2c", 10000);
*/
    // open device file
    fd_i2c = open("/dev/i2c", O_RDWR);

    printf("Descriptor de fichero: %d\n", fd_i2c);

    // register the address of the slave to comunicate with
    ioctl(fd_i2c, I2C_SLAVE, SLAVE_ADDR);



    /*
    ** MY Runloop
    */
    while (CFE_ES_RunLoop(&MY_APP_Data.RunStatus) == true)
    {
	      printf("HOLA_MY_APP\n");

	//mensaje saludar
        memset(request,'\0',10);
        memset(answer,'\0',10);
        strcpy(request, "HOLA ARDU\n");
        write(fd_i2c, request, MSG_LEN);
        nanosleep(&time_msg, NULL);
        read(fd_i2c, answer, MSG_LEN);
        printf("%s\n", answer);
	
	//mensaje leer luminosidad
	memset(request,'\0',10);
        memset(answer,'\0',10);
        strcpy(request, "LEER:LUMI\n");
        write(fd_i2c, request, MSG_LEN);
        nanosleep(&time_msg, NULL);
        read(fd_i2c, answer, MSG_LEN);
	sscanf (answer, "LUMI:%d%%\n", &porcentajeLuminosidad);
        printf("El procentaje luminico es de %d%%\n", porcentajeLuminosidad);

	//mensaje alarma
	memset(request,'\0',10);
        memset(answer,'\0',10);
	if(porcentajeLuminosidad<umbralLuminosidad){
		strcpy(request, "ALARM:SET\n");
		printf("Luminosidad anormal, enviando alarma\n");
	}else{
		strcpy(request, "ALARM:CLR\n");
		printf("Luminosidad correcta\n");
	}
        
        write(fd_i2c, request, MSG_LEN);
        nanosleep(&time_msg, NULL);
        read(fd_i2c, answer, MSG_LEN);
        

        /*
        ** Performance Log Exit Stamp
        */
        CFE_ES_PerfLogExit(MY_APP_PERF_ID);

        /* Pend on receipt of command packet */
        status = CFE_SB_ReceiveBuffer(&SBBufPtr, MY_APP_Data.CommandPipe, CFE_SB_PEND_FOREVER);

        /*
        ** Performance Log Entry Stamp
        */
        CFE_ES_PerfLogEntry(MY_APP_PERF_ID);

        if (status == CFE_SUCCESS)
        {
            MY_APP_ProcessCommandPacket(SBBufPtr);
        }
        else
        {
            CFE_EVS_SendEvent(MY_APP_PIPE_ERR_EID, CFE_EVS_EventType_ERROR,
                              "MY APP: SB Pipe Read Error, App Will Exit");

            MY_APP_Data.RunStatus = CFE_ES_RunStatus_APP_ERROR;
        }
    }

    /*
    ** Performance Log Exit Stamp
    */
    CFE_ES_PerfLogExit(MY_APP_PERF_ID);

    CFE_ES_ExitApp(MY_APP_Data.RunStatus);

} /* End of MY_APP_Main() */

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  */
/*                                                                            */
/* MY_APP_Init() --  initialization                                       */
/*                                                                            */
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
int32 MY_APP_Init(void)
{
    int32 status;

    MY_APP_Data.RunStatus = CFE_ES_RunStatus_APP_RUN;

    /*
    ** Initialize app command execution counters
    */
    MY_APP_Data.CmdCounter = 0;
    MY_APP_Data.ErrCounter = 0;

    /*
    ** Initialize app configuration data
    */
    MY_APP_Data.PipeDepth = MY_APP_PIPE_DEPTH;

    strncpy(MY_APP_Data.PipeName, "MY_APP_CMD_PIPE", sizeof(MY_APP_Data.PipeName));
    MY_APP_Data.PipeName[sizeof(MY_APP_Data.PipeName) - 1] = 0;

    /*
    ** Initialize event filter table...
    */
    MY_APP_Data.EventFilters[0].EventID = MY_APP_STARTUP_INF_EID;
    MY_APP_Data.EventFilters[0].Mask    = 0x0000;
    MY_APP_Data.EventFilters[1].EventID = MY_APP_COMMAND_ERR_EID;
    MY_APP_Data.EventFilters[1].Mask    = 0x0000;
    MY_APP_Data.EventFilters[2].EventID = MY_APP_COMMANDNOP_INF_EID;
    MY_APP_Data.EventFilters[2].Mask    = 0x0000;
    MY_APP_Data.EventFilters[3].EventID = MY_APP_COMMANDRST_INF_EID;
    MY_APP_Data.EventFilters[3].Mask    = 0x0000;
    MY_APP_Data.EventFilters[4].EventID = MY_APP_INVALID_MSGID_ERR_EID;
    MY_APP_Data.EventFilters[4].Mask    = 0x0000;
    MY_APP_Data.EventFilters[5].EventID = MY_APP_LEN_ERR_EID;
    MY_APP_Data.EventFilters[5].Mask    = 0x0000;
    MY_APP_Data.EventFilters[6].EventID = MY_APP_PIPE_ERR_EID;
    MY_APP_Data.EventFilters[6].Mask    = 0x0000;


    /*
    ** Register the events
    */
    status = CFE_EVS_Register(MY_APP_Data.EventFilters, MY_APP_EVENT_COUNTS, CFE_EVS_EventFilter_BINARY);
    if (status != CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("MY App: Error Registering Events, RC = 0x%08lX\n", (unsigned long)status);
        return (status);
    }

    /*
    ** Initialize housekeeping packet (clear user data area).
    */
    CFE_MSG_Init(&MY_APP_Data.HkTlm.TlmHeader.Msg, MY_APP_HK_TLM_MID, sizeof(MY_APP_Data.HkTlm));

    /*
    ** Create Software Bus message pipe.
    */
    status = CFE_SB_CreatePipe(&MY_APP_Data.CommandPipe, MY_APP_Data.PipeDepth, MY_APP_Data.PipeName);
    if (status != CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("MY App: Error creating pipe, RC = 0x%08lX\n", (unsigned long)status);
        return (status);
    }

    /*
    ** Subscribe to Housekeeping request commands
    */
    status = CFE_SB_Subscribe(MY_APP_SEND_HK_MID, MY_APP_Data.CommandPipe);
    if (status != CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("MY App: Error Subscribing to HK request, RC = 0x%08lX\n", (unsigned long)status);
        return (status);
    }

    /*
    ** Subscribe to ground command packets
    */
    status = CFE_SB_Subscribe(MY_APP_CMD_MID, MY_APP_Data.CommandPipe);
    if (status != CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("MY App: Error Subscribing to Command, RC = 0x%08lX\n", (unsigned long)status);

        return (status);
    }

    /*
    ** Register Table(s)
    */
    status = CFE_TBL_Register(&MY_APP_Data.TblHandles[0], "MyAppTable", sizeof(MY_APP_Table_t),
                              CFE_TBL_OPT_DEFAULT, MY_APP_TblValidationFunc);
    if (status != CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("MY App: Error Registering Table, RC = 0x%08lX\n", (unsigned long)status);

        return (status);
    }
    else
    {
        status = CFE_TBL_Load(MY_APP_Data.TblHandles[0], CFE_TBL_SRC_FILE, MY_APP_TABLE_FILE);
    }

    CFE_EVS_SendEvent(MY_APP_STARTUP_INF_EID, CFE_EVS_EventType_INFORMATION, "MY App Initialized.%s",
                      MY_APP_VERSION_STRING);

    return (CFE_SUCCESS);

} /* End of MY_APP_Init() */

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
/*  Name:  MY_APP_ProcessCommandPacket                                    */
/*                                                                            */
/*  Purpose:                                                                  */
/*     This routine will process any packet that is received on the MY    */
/*     command pipe.                                                          */
/*                                                                            */
/* * * * * * * * * * * * * * * * * * * * * * * *  * * * * * * *  * *  * * * * */
void MY_APP_ProcessCommandPacket(CFE_SB_Buffer_t *SBBufPtr)
{
    CFE_SB_MsgId_t MsgId = CFE_SB_INVALID_MSG_ID;

    CFE_MSG_GetMsgId(&SBBufPtr->Msg, &MsgId);

    switch (MsgId)
    {
        case MY_APP_CMD_MID:
            MY_APP_ProcessGroundCommand(SBBufPtr);
            break;

        case MY_APP_SEND_HK_MID:
            MY_APP_ReportHousekeeping((CFE_MSG_CommandHeader_t *)SBBufPtr);
            break;

        default:
            CFE_EVS_SendEvent(MY_APP_INVALID_MSGID_ERR_EID, CFE_EVS_EventType_ERROR,
                              "MY: invalid command packet,MID = 0x%x", (unsigned int)CFE_SB_MsgIdToValue(MsgId));
            break;
    }

    return;

} /* End MY_APP_ProcessCommandPacket */

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
/*                                                                            */
/* MY_APP_ProcessGroundCommand() -- MY ground commands                */
/*                                                                            */
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
void MY_APP_ProcessGroundCommand(CFE_SB_Buffer_t *SBBufPtr)
{
    CFE_MSG_FcnCode_t CommandCode = 0;

    CFE_MSG_GetFcnCode(&SBBufPtr->Msg, &CommandCode);

    /*
    ** Process "known" MY app ground commands
    */
    switch (CommandCode)
    {
        case MY_APP_NOOP_CC:
            if (MY_APP_VerifyCmdLength(&SBBufPtr->Msg, sizeof(MY_APP_NoopCmd_t)))
            {
                MY_APP_Noop((MY_APP_NoopCmd_t *)SBBufPtr);
            }

            break;

        case MY_APP_RESET_COUNTERS_CC:
            if (MY_APP_VerifyCmdLength(&SBBufPtr->Msg, sizeof(MY_APP_ResetCountersCmd_t)))
            {
                MY_APP_ResetCounters((MY_APP_ResetCountersCmd_t *)SBBufPtr);
            }

            break;

        case MY_APP_PROCESS_CC:
            if (MY_APP_VerifyCmdLength(&SBBufPtr->Msg, sizeof(MY_APP_ProcessCmd_t)))
            {
                MY_APP_Process((MY_APP_ProcessCmd_t *)SBBufPtr);
            }

            break;

        /* default case already found during FC vs length test */
        default:
            CFE_EVS_SendEvent(MY_APP_COMMAND_ERR_EID, CFE_EVS_EventType_ERROR,
                              "Invalid ground command code: CC = %d", CommandCode);
            break;
    }

    return;

} /* End of MY_APP_ProcessGroundCommand() */

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
/*  Name:  MY_APP_ReportHousekeeping                                          */
/*                                                                            */
/*  Purpose:                                                                  */
/*         This function is triggered in response to a task telemetry request */
/*         from the housekeeping task. This function will gather the Apps     */
/*         telemetry, packetize it and send it to the housekeeping task via   */
/*         the software bus                                                   */
/* * * * * * * * * * * * * * * * * * * * * * * *  * * * * * * *  * *  * * * * */
int32 MY_APP_ReportHousekeeping(const CFE_MSG_CommandHeader_t *Msg)
{
    int i;

    /*
    ** Get command execution counters...
    */
    MY_APP_Data.HkTlm.Payload.CommandErrorCounter = MY_APP_Data.ErrCounter;
    MY_APP_Data.HkTlm.Payload.CommandCounter      = MY_APP_Data.CmdCounter;

    /*
    ** Send housekeeping telemetry packet...
    */
    CFE_SB_TimeStampMsg(&MY_APP_Data.HkTlm.TlmHeader.Msg);
    CFE_SB_TransmitMsg(&MY_APP_Data.HkTlm.TlmHeader.Msg, true);

    /*
    ** Manage any pending table loads, validations, etc.
    */
    for (i = 0; i < MY_APP_NUMBER_OF_TABLES; i++)
    {
        CFE_TBL_Manage(MY_APP_Data.TblHandles[i]);
    }

    return CFE_SUCCESS;

} /* End of MY_APP_ReportHousekeeping() */

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
/*                                                                            */
/* MY_APP_Noop -- MY NOOP commands                                        */
/*                                                                            */
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
int32 MY_APP_Noop(const MY_APP_NoopCmd_t *Msg)
{

    MY_APP_Data.CmdCounter++;

    CFE_EVS_SendEvent(MY_APP_COMMANDNOP_INF_EID, CFE_EVS_EventType_INFORMATION, "MY: NOOP command %s",
                      MY_APP_VERSION);

    return CFE_SUCCESS;

} /* End of MY_APP_Noop */

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
/*  Name:  MY_APP_ResetCounters                                               */
/*                                                                            */
/*  Purpose:                                                                  */
/*         This function resets all the global counter variables that are     */
/*         part of the task telemetry.                                        */
/*                                                                            */
/* * * * * * * * * * * * * * * * * * * * * * * *  * * * * * * *  * *  * * * * */
int32 MY_APP_ResetCounters(const MY_APP_ResetCountersCmd_t *Msg)
{

    MY_APP_Data.CmdCounter = 0;
    MY_APP_Data.ErrCounter = 0;

    CFE_EVS_SendEvent(MY_APP_COMMANDRST_INF_EID, CFE_EVS_EventType_INFORMATION, "MY: RESET command");

    return CFE_SUCCESS;

} /* End of MY_APP_ResetCounters() */

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
/*  Name:  MY_APP_Process                                                     */
/*                                                                            */
/*  Purpose:                                                                  */
/*         This function Process Ground Station Command                       */
/*                                                                            */
/* * * * * * * * * * * * * * * * * * * * * * * *  * * * * * * *  * *  * * * * */
int32 MY_APP_Process(const MY_APP_ProcessCmd_t *Msg)
{
    int32               status;
    MY_APP_Table_t *TblPtr;
    const char *        TableName = "MY_APP.MyAppTable";

    /* MY Use of Table */

    status = CFE_TBL_GetAddress((void *)&TblPtr, MY_APP_Data.TblHandles[0]);

    if (status < CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("MY App: Fail to get table address: 0x%08lx", (unsigned long)status);
        return status;
    }

    CFE_ES_WriteToSysLog("MY App: Table Value 1: %d  Value 2: %d", TblPtr->Int1, TblPtr->Int2);

    MY_APP_GetCrc(TableName);

    status = CFE_TBL_ReleaseAddress(MY_APP_Data.TblHandles[0]);
    if (status != CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("MY App: Fail to release table address: 0x%08lx", (unsigned long)status);
        return status;
    }

    /* Invoke a function provided by MY_APP_LIB */
    SAMPLE_LIB_Function();

    return CFE_SUCCESS;

} /* End of MY_APP_ProcessCC */

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
/*                                                                            */
/* MY_APP_VerifyCmdLength() -- Verify command packet length                   */
/*                                                                            */
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
bool MY_APP_VerifyCmdLength(CFE_MSG_Message_t *MsgPtr, size_t ExpectedLength)
{
    bool              result       = true;
    size_t            ActualLength = 0;
    CFE_SB_MsgId_t    MsgId        = CFE_SB_INVALID_MSG_ID;
    CFE_MSG_FcnCode_t FcnCode      = 0;

    CFE_MSG_GetSize(MsgPtr, &ActualLength);

    /*
    ** Verify the command packet length.
    */
    if (ExpectedLength != ActualLength)
    {
        CFE_MSG_GetMsgId(MsgPtr, &MsgId);
        CFE_MSG_GetFcnCode(MsgPtr, &FcnCode);

        CFE_EVS_SendEvent(MY_APP_LEN_ERR_EID, CFE_EVS_EventType_ERROR,
                          "Invalid Msg length: ID = 0x%X,  CC = %u, Len = %u, Expected = %u",
                          (unsigned int)CFE_SB_MsgIdToValue(MsgId), (unsigned int)FcnCode, (unsigned int)ActualLength,
                          (unsigned int)ExpectedLength);

        result = false;

        MY_APP_Data.ErrCounter++;
    }

    return (result);

} /* End of MY_APP_VerifyCmdLength() */

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
/*                                                                 */
/* MY_APP_TblValidationFunc -- Verify contents of First Table      */
/* buffer contents                                                 */
/*                                                                 */
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
int32 MY_APP_TblValidationFunc(void *TblData)
{
    int32               ReturnCode = CFE_SUCCESS;
    MY_APP_Table_t *TblDataPtr = (MY_APP_Table_t *)TblData;

    /*
    ** MY Table Validation
    */
    if (TblDataPtr->Int1 > MY_APP_TBL_ELEMENT_1_MAX)
    {
        /* First element is out of range, return an appropriate error code */
        ReturnCode = MY_APP_TABLE_OUT_OF_RANGE_ERR_CODE;
    }

    return ReturnCode;

} /* End of MY_APP_TBLValidationFunc() */

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
/*                                                                 */
/* MY_APP_GetCrc -- Output CRC                                     */
/*                                                                 */
/*                                                                 */
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
void MY_APP_GetCrc(const char *TableName)
{
    int32          status;
    uint32         Crc;
    CFE_TBL_Info_t TblInfoPtr;

    status = CFE_TBL_GetInfo(&TblInfoPtr, TableName);
    if (status != CFE_SUCCESS)
    {
        CFE_ES_WriteToSysLog("MY App: Error Getting Table Info");
    }
    else
    {
        Crc = TblInfoPtr.Crc;
        CFE_ES_WriteToSysLog("MY App: CRC: 0x%08lX\n\n", (unsigned long)Crc);
    }

    return;

} /* End of MY_APP_GetCrc */


#define CONFIGURE_APPLICATION_NEEDS_CLOCK_DRIVER
#define CONFIGURE_APPLICATION_NEEDS_CONSOLE_DRIVER

#define CONFIGURE_RTEMS_INIT_TASKS_TABLE
#define CONFIGURE_MAXIMUM_TASKS 1
#define CONFIGURE_MAXIMUM_SEMAPHORES 10
#define CONFIGURE_MAXIMUM_FILE_DESCRIPTORS 30
#define CONFIGURE_MAXIMUM_DIRVER 10
#define CONFIGURE_MAXIMUM_POSIX_THREADS 2
#define CONFIGURE_MAXIMUM_POSIX_TIMERS 1

#define CONFIGURE_INIT
#include <rtems/confdefs.h>
