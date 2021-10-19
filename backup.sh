#!/bin/sh

/usr/bin/rsync -avz -e "ssh -i /root/.ssh/id_rsa.pub" root@A.com:/etc /var/ServerBackup
/usr/bin/rsync -avz -e "ssh -i /root/.ssh/id_rsa.pub" --excluir mysite/updraft --excluir mysite/.cache root@A.com:/var/www/ /var/ServerBackup
echo "........ (otros comandos similares)"
/usr/bin/rsync -avz -e "ssh -i /root/.ssh/id_rsa.pub" root@A.com:/var/lib/mysql /var/ServerBackup

