TOP = ..
include $(TOP)/configure/CONFIG

DIRS := $(DIRS) ntndArrayConverterSrc
DIRS := $(DIRS) src
src_DEPEND_DIRS += ntndArrayConverterSrc
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *db*))
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *Db*))

include $(TOP)/configure/RULES_DIRS
