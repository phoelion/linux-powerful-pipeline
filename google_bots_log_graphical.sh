#!/bin/bash
sudo cat /var/log/nginx/access.log | grep Googlebot | cut -d'/' -f 3 | cut -d ':' -f 2 | sort | uniq -c | awk '{print $2 " " $1 }' | termgraph
