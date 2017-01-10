#!/bin/bash

vagrant ssh -c 'sudo /bin/sed -i "s/default_backend inactive/default_backend active/" /etc/haproxy/haproxy.cfg && sudo /usr/sbin/service haproxy reload'

