#!/bin/bash

# how many thread must be used for compilation ( leave zero to use all available )
MTHREADS=0
# enable/disable warnings during compilation
CWARNINGS=1
# enable/disable some debug informations ( it's not a debug compilation )
CDEBUG=0
# specify compilation type
CCTYPE=Release
# compile scripts
CSCRIPTS=0
# compile server
CSERVERS=1
# compile tools
CTOOLS=0
# use precompiled headers ( fatest compilation but not optimized if you change headers often )
CSCRIPTPCH=1
CCOREPCH=1

# compile azth plugins for custom features
CAZTH_PLG=1
# compile azth plugins for trinitycore features
CAZTH_TC_PLG=1

CAZTH_UNIT_TEST=1

# absolute root path of your azerothshard repository
SRCPATH=/home/hw2/usr/workspace/projects/AzerothShard/server/
# absolute path where binary files must be stored
BINPATH=/home/hw2/modules/azerothshard-server/
# absolute path where config. files must be stored
CONFDIR=/home/hw2/modules/azerothshard-server/etc/
