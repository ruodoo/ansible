#! /bin/bash

 for i in {102..256}
 do
     # BatchMode removes the password prompt if we don't own the ip pointed by the DNS record
     # StrictHostKeyChecking=accept-new automatically approves the fingerprint
     # -t 'exit' to close the connection directly
     ssh root@runbot$i.odoo.com -o BatchMode=yes -O StrictHostKeyChecking=accept-new -t 'exit'
 done
