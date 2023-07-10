#!/bin/bash

SUBSCRIPTION=drink-1-bartender
gcloud pubsub subscriptions pull ${SUBSCRIPTION} --project="devops-skills-sharing"
