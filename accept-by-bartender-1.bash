#!/bin/bash

SUBSCRIPTION=drink-1-bartender
gcloud pubsub subscriptions pull ${SUBSCRIPTION} --project="devops-skills-sharing" --format=json | jq -r '.[].message.data | @base64d'
