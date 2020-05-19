#Author felipe.pereira_at_ifmg[dot]edu<one-more-dot>br




#Version 1
#!/bin/msh
asterisk -rx "isip reload"
exit



#Version 2

root:~> cat reload.sh
while :
do
	asterisk -rx "isip reload"
	sleep 30
	done
exit



#Version 3

root:~> cat test.sh
#!/bin/msh
asterisk -rx "isip reload"
exit
