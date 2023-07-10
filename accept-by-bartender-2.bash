#!/bin/bash

SUBSCRIPTION=drink-1-bartender
while :
do
    gcloud pubsub subscriptions pull ${SUBSCRIPTION} --auto-ack --project="devops-skills-sharing" --format=json | jq -r '.[].message.data | @base64d'
done
