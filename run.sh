#!/bin/sh

time=$(date '+%Y.%m.%d %H:%M:%S')

cd ~/Code/WeChatPush/

echo "$time" >>cron.txt

npm install && npm run dev
