#!../../bin/linux-x86_64/simDetectorApp

< envPaths

dbLoadDatabase("$(TOP)/dbd/simDetectorApp.dbd")
simDetectorApp_registerRecordDeviceDriver(pdbbase)

epicsEnvSet("PREFIX", "13SIM1:")
epicsEnvSet("PORT",   "SIM1")
epicsEnvSet("QSIZE",  "20")
epicsEnvSet("XSIZE",  "1024")
epicsEnvSet("YSIZE",  "1024")
epicsEnvSet("PVNAME", "testMP")
epicsEnvSet("NELM",   "1048576")
epicsEnvSet("EPICS_DB_INCLUDE_PATH", "$(ADCORE)/db:$(ADPVA)/db")
epicsEnvSet("EPICS_CA_MAX_ARRAY_BYTES", "1100000")

# Create a simDetector driver
# simDetectorConfig(portName, maxSizeX, maxSizeY, dataType, maxBuffers,
#                   maxMemory, priority, stackSize)
simDetectorConfig("$(PORT)", "$(XSIZE)", "$(YSIZE)", 1)
dbLoadRecords("simDetector.template","P=$(PREFIX),R=cam1:,PORT=$(PORT),ADDR=0,TIMEOUT=1")

# Create a NDPluginPva plugin
# NDPvaConfigure(portName, maxBuffers, maxMemory, ndarrayPort, ndarrayAddr,
#                pvName, maxMemory, priority, stackSize)
NDPvaConfigure("PVA", 3, 0, "$(PORT)", 0, "$(PVNAME)")
dbLoadRecords("NDPluginBase.template", "P=$(PREFIX),R=pva1:,PORT=PVA,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT)")

iocInit()
