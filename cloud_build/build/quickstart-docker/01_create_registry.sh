#!/usr/bin/env bash

set -x

#LOC="australia-southeast1"
LOC="us-central1"


gcloud artifacts repositories create quickstart-docker-repo \
    --repository-format=docker \
    --location=$LOC \
    --description="Docker repository"
