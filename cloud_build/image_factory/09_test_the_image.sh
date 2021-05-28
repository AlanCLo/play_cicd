#!/usr/bin/env bash


set -x

PROJECT="$(gcloud config get-value project)"

gcloud compute firewall-rules create http --allow=tcp:80 \
    --target-tags=http-server --source-ranges=0.0.0.0/0

gcloud compute instances create helloworld-from-factory \
    --image "https://www.googleapis.com/compute/v1/projects/$PROJECT/global/images/helloworld-v02" \
    --tags=http-server --zone=australia-southeast1-a
