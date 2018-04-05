#!/bin/bash

KEY=<your key>
SECRET=<your secret>
DOMAIN=<your domain name>
HOSTS=(host1 host2 host3)

IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

for HOST in "${HOSTS[@]}"
do
	echo Updating hostname: $HOST
	curl -X PUT -H "accept: application/json" -H "Content-Type: application/json" -H "Authorization: sso-key $KEY:$SECRET" -d "[ { \"data\": \"$IP\" }]" "https://api.godaddy.com/v1/domains/$DOMAIN/records/A/$HOST" > /dev/null
done
