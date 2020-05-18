#Author felipe.pereira_at_ifmg[dot]edu<one-more-dot>br


É necessário reiniciar a central periodicamente para executar o comando: asterisk -rx "isip reload"


A solução encontrada foi criar um script para execução da tarefa

root:~> cat /usr/sbin/cipreload.sh
#!/bin/msh
asterisk -rx "isip reload"
exit
root:~>

Como forma de programar a execução de forma automática, foi configurado o serviço cron


pwd: 

cron
cat /var/spool/cron/crontabs/root

Scripts:





root:~> cat reload.sh
while :
do
	asterisk -rx "isip reload"
	sleep 30
	done



root:~> cat test.sh
#!/bin/msh                                                                      
asterisk -rx "isip reload"                                                      
exit





#Built-in commands:
-------------------
#	. : break cd continue eval exec exit export help login newgrp
#	read readonly set shift times trap umask wait [ [[ adjtimex awk
#	basename bunzip2 bzcat cat chgrp chmod chown chroot clear cmp
#	cp cpio crond crontab cut date dc dd df diff dmesg du echo env
#	expr false find fold free freeramdisk ftpget ftpput getopt getty
#	grep gunzip gzip halt head hostid hostname hwclock id ifconfig
#	insmod kill killall klogd last length ln logger logname logread
#	losetup ls lsmod md5sum mesg mkdir mkfifo mknod modprobe more
#	mount msh mv nc netstat nslookup pidof ping pivot_root poweroff
#	printf ps pwd realpath reboot renice rm rmdir rmmod sed seq sh
#	sleep sort stty su sync syslogd tail tar tee telnet test tftp
#	time top touch tr traceroute true tty umount uname uniq unzip
#	uptime usleep vconfig vi watch wc wget which whoami xargs yes
#	zcat
