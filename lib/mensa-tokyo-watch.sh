#!/bin/sh

# 3 hour
SLEEP_SEC=10800
LOOP_MAX=16560

# TARGET_URL= set this
TARGET_URL="https://mensa.jp/exam/"

TEXT=$(curl $TARGET_URL | htmlq --text "#exam p:nth-of-type(5)" | sed 's/^ *\| *$//')
if [ $TEXT != '（現在未定です）' ]; then
  curl -X POST --data-urlencode "payload={\"channel\": \"#notice\", \"username\": \"MENSA checker\", \"text\": \"${TEXT}\", \"icon_emoji\": \":gift:\"}" $SLACK_URL
fi

