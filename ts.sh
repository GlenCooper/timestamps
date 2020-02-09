#!/bin/sh
# 20200103T193701Z ts.sh script, by Glen Cooper, glencooper.com
# 
# DESCRIPTION: Use this to get the timestamp now, or for a file using the timestamps.glencooper.com format
#
# HISTORY:
# 20200131T234830Z if "ts" if typed by itself on the cli, the script should return the current timestamp
# 20200209T225351Z this now lives on github at https://github.com/GlenCooper/timestamps/blob/master/ts.sh

# see https://archive.ph/ksHkJ
if test -z "$1"
then  # No command-line arguments
  date '+%Y%m%dT%H%M%SZ'
else # First command-line argument is $1
  target=$1
  identify -verbose $1 | grep -i digit
fi

