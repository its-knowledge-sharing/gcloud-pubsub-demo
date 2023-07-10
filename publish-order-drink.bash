#!/bin/bash

ORDER=$1
if [ -z "$ORDER" ]
then
    ORDER="Plain_Water"
fi

gcloud pubsub topics publish "drink-1" --message="${ORDER}" --project="devops-skills-sharing"
