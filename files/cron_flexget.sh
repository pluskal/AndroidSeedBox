#!/system/bin/sh
service=flexget

if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running!!!"
else
/opt/etc/init.d/S90$service start
fi
