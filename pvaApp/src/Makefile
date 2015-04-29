TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

DBD += pvaDriverSupport.dbd
DBD += NDPluginPva.dbd

INC += pvaDriver.h
INC += NDPluginPva.h

LIBRARY_IOC += pvaDriver
pvaDriver_SRCS += pvaDriver.cpp
pvaDriver_LIBS += pvData
pvaDriver_LIBS += pvAccess
pvaDriver_LIBS += nt

LIBRARY_IOC += NDPluginPva
NDPluginPva_SRCS += NDPluginPva.cpp
NDPluginPva_LIBS += pvData
NDPluginPva_LIBS += pvDatabase
NDPluginPva_LIBS += pvAccess
NDPluginPva_LIBS += nt

include $(ADCORE)/ADApp/commonLibraryMakefile

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

