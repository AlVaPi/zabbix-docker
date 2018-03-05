#!/bin/bash
echo -e "$2\n$3" | sendxmpp -u zabbix@company.com;xmpp.server.com -p password $1
