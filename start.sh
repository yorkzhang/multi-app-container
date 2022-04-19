#!/bin/bash
cd /home/myapp
pm2 start app1.js
cd /home/myapp/myapp1
pm2 start app2.js
/docker-entrypoint.sh nginx -g 'daemon off;'