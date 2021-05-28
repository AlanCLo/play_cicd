#!/usr/bin/env bash

set -x


PROJ=$(gcloud config get-value project)

gcloud builds submit --tag us-central1-docker.pkg.dev/${PROJ}/quickstart-docker-repo/quickstart-image:tag1
