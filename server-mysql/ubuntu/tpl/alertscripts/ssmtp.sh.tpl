#!/usr/bin/sh
export smtpemailfrom=zabbix@company.com
echo "To: $1" > /tmp/mailinput
echo "Subject: $2" >> /tmp/mailinput
echo "Content-Type: text/html; charset=UTF-8" >> /tmp/mailinput
echo "From: \"Company Name\"<$smtpemailfrom>" >> /tmp/mailinput
echo "" >> /tmp/mailinput
echo "$3" >> /tmp/mailinput
/usr/sbin/ssmtp $1 -F zabbix@company.com < /tmp/mailinput
