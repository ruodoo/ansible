#! /bin/bash

for i in {257..266}
do
     # The following will remove the old known_host from your ~/.ssh/known_hosts file
     # This is necessary if some servers get reinstalled.
     ssh-keygen -q -R runbot$i.odoo.com
     # BatchMode removes the password prompt if we don't own the ip pointed by the DNS record
     # StrictHostKeyChecking=accept-new automatically approves the fingerprint
     # -t 'exit' to close the connection directly
     ssh root@runbot$i.odoo.com -o BatchMode=yes -o StrictHostKeyChecking=accept-new -t "exit"
done
