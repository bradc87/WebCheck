#!/usr/bin/env bash
URL=$1
RESP=$(curl --insecure -I $URL 2>/dev/null  |grep 20| grep OK | wc -l)
if [ $RESP -gt 0 ]; then
  echo "OK"
  exit 0
fi
echo "NOT OK"
exit 0 

