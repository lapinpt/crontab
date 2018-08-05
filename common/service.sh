#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread
# TimeZoon 8,China. I do not known how to use tzselect
export TZ=Europe/Lisbon

# mkdir -p '/data/crontabs' ; touch '/data/crontabs/root'
# Test log date every 5 minutes
# echo '*/5 * * * * date > /sdcard/cronlogdate.txt' >> /data/crontabs/root
# @reboot dont work

#a shell file 
#mktouch /data/cronsh/zd.sh 2</dev/null
#chmod 755 /data/cronsh/zd.sh 2</dev/null

# change the path
# -c DIR  Cron dir. Default:/var/spool/cron/crontabs
# -l N    Set log level. Most verbose 0, default 8
# -L FILE Log to FILE

# crond -l 4 -L '/data/local/crondebug.log' -c '/data/crontabs'

crond -c '/data/crontabs'

# This script will be executed in late_start service mode
# More info in the main Magisk thread
