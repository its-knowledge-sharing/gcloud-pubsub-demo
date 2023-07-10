#!/bin/bash

SUBSCRIPTION=drink-1-bartender
gcloud pubsub subscriptions pull ${SUBSCRIPTION} --auto-ack --project="devops-skills-sharing" --format=json | jq -r '.[].message.data | @base64d'
