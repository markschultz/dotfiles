#! /bin/bash

{ ls /var/log/mail.log* | grep -v gz | xargs cat ; zcat /var/log/mail.log.*.gz ; } | pflogsumm | mail -s "Postfix Mail Stats - `date`" root@m9r1s.com
