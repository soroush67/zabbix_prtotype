 echo "UserParameter=ss.tcp.listening,ss -lnt | awk '{print $4}' | awk -F: 'NR>1 {print $NF}' | jq -Rn '[inputs | { "{#PORT}": . }]' >> /etc/zabbix/zabbix_agent2.d/custom.conf
 sudo systemctl restart zabbix-agent2
