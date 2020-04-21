#!/bin/bash


# paramétrer un conteneur nginx
# avec un health-check

docker stop nginx > /dev/null 2>&1
docker rm nginx > /dev/null 2>&1

docker run -d \
    --name nginx \
    -p 8080:80 \
custom-nginx:latest


#  --health-cmd            Command to run to check health
#  --health-interval       Time between running the check
#  --health-retries        Consecutive failures needed to report unhealthy
#  --health-timeout        Maximum time to allow one check to run
#  --health-start-period   Start period for the container to initialize before starting health-retries countdown
#  --no-healthcheck        Disable any container-specified HEALTHCHECK

# curl -I -s -o /dev/null -w "%{http_code}" localhost:8080/
