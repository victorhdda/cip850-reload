---
title: CIP850-RELOAD
date: 2020-05-18 23:20:00
tags:
- VOIP
- NETWORK
- ASTERISK
- CIP850
- SHELL
---

Uma forma encontrada para contornar uma indisponibilidade, recorrente, da central Intelbrás [CIP-850], foi criar um script que reinicia os canais sip de sua instância Asterisk periodicamente.



Essa insdisponibilidade parece estar relacionada ao tempo de vida de uma conexão TCP (normalmente 120 segundos).

#### Solução
Em uma central que não responde a um juntor SIP, basta acessá-la via telnet, executar o comando abaixo e observar a reconexão dos juntores.



```sh
asterisk -rx "isip reload"
```

Como forma de programar a execução de forma automática, foi configurado o serviço cron, sem muito sucesso, para execução periódico desses scripts e  comando:


```sh
root:~> cat /var/spool/cron/crontabs/root
* * * * * /usr/sbin/sysinfo.sh
*/3 * * * * /usr/sbin/cip-reload.sh > /dev/null 2>&1
*/10 * * * * /usr/sbin/run_ntp > /dev/null 2>&1

root:~> cat /var/spool/cron/crontabs/root
* * * * * /usr/sbin/sysinfo.sh
*/1 * * * * asterisk -rx "isip reload" > /dev/null 2>&1
*/10 * * * * /usr/sbin/run_ntp > /dev/null 2>&1
```

Em versões mais novas da central, v.2.08.15 ou posteriores, uma solução parece ter sido implementada. A imagem abaixo mostra opções para configurar o tempo de sessão TCP/SIP e o intervalo para envio de pacotes de updates.


![Figura 1: Configuração de tempos de vida (keep alive) da conexão TCP/SIP a um juntor](/images/02.png)


#Dúvidas

#o reboot e a execução do código tem que ser sincronizados ? será que a conexão TCP se perde com tempo maior que 2 min ?



[CIP-850]: /images/01.png
