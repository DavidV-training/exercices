#!/bin/bash

docker stop nginx > /dev/null 2>&1
docker rm nginx > /dev/null 2>&1

docker run -d \
    --name nginx \
    -p 8080:80 \
    --health-cmd 'if [ "`curl -I -s -o /dev/null -w "%{http_code}" localhost`" = "200" ] ; then exit 0; else exit -1; fi' \
    --health-interval 5s \
nginx-dve-multi-ligne


#  --health-cmd            Command to run to check health
#  --health-interval       Time between running the check
#  --health-retries        Consecutive failures needed to report unhealthy
#  --health-timeout        Maximum time to allow one check to run
#  --health-start-period   Start period for the container to initialize before starting health-retries countdown
#  --no-healthcheck        Disable any container-specified HEALTHCHECK

# curl -I -s -o /dev/null -w "%{http_code}" localhost:8080/
