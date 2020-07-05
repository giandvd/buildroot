#!/bin/sh
set -e
mkdir -p /var/lib/postfix
chown postfix:root /var/spool/postfix/* /var/lib/postfix
chown root:root /var/spool/postfix /var/spool/postfix/pid
chgrp postdrop /var/spool/postfix/maildrop /var/spool/postfix/public

