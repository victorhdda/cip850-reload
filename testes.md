root:~> uptime
 23:15:11 up 1 min, load average: 0.85, 0.35, 0.12
root:~> uptime
 23:15:14 up 1 min, load average: 0.85, 0.35, 0.12
root:~> cat /var/spool/cron/crontabs/root
* * * * * /usr/sbin/sysinfo.sh
*/1 * * * * asterisk -rx "isip reload" > /dev/null 2>&1
*/10 * * * * /usr/sbin/run_ntp > /dev/null 2>&1
root:~>
------------------------SUCESSO



root:~> uptime
 23:17:50 up 4 min, load average: 0.05, 0.20, 0.09
root:~> cat /var/spool/cron/crontabs/root
* * * * * /usr/sbin/sysinfo.sh

*/1 * * * * asterisk -rx "isip reload" > /dev/null 2>&1
*/10 * * * * /usr/sbin/run_ntp > /dev/null 2>&1
------------------------SUCESSO



root:~> uptime
 23:20:32 up 6 min, load average: 0.12, 0.16, 0.09
root:~> cat /var/spool/cron/crontabs/root
* * * * * /usr/sbin/sysinfo.sh

*/1 * * * * asterisk -rx "isip reload" > /dev/null 2>&1
*/10 * * * * /usr/sbin/run_ntp > /dev/null 2>&1

-------------------------FAIL


root:~> asterisk -rx "isip reload"
No entry for terminal type "dumb";
using dumb terminal settings.

root:~> uptime
 23:22:27 up 8 min, load average: 0.14, 0.13, 0.08

 -----------------SUCESSO
root



root:~> /bin/msh asterisk -rx "isip reload"
asterisk: cannot open

Está relacionado com programa que exucuta os códigos do cron??

Perdi acesso ao console
