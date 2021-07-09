#!/bin/sh

# 10min
SLEEP_SEC=600
LOOP_MAX=16560

# TARGET_URL= set this
echo $TARGET_URL

COUNT=0
while [ $COUNT -lt $LOOP_MAX ]
do
  echo $COUNT
  TS=`date '+%Y%m%d_%H%M'`
  curl $TARGET_URL >> out/$TS.html
  
  sleep ${SLEEP_SEC}
  COUNT=`expr ${COUNT} + 1`
done