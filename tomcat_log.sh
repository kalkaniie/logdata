#!/bin/sh
LOGDIR=/usr/local/kebi/tomcat/logs
COPYDIR=/usr/local/kebi/logdata/tomcat
find $LOGDIR -maxdepth 1 -name '*.log' -mtime +30 -type f -exec rm -f {} \;
find $COPYDIR -maxdepth 1 -name '*.txt' -mtime +30 -type f -exec rm -f {} \;
find $LOGDIR -name '*.log' -mtime -30 -exec cp -p {} $COPYDIR \;
find $LOGDIR -name '*.txt' -mtime -30 -exec cp -p {} $COPYDIR \;
