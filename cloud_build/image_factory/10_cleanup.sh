#!/usr/bin/env bash


set -x

PROJECT="$(gcloud config get-value project)"

gcloud compute firewall-rules delete --quiet http
gcloud compute instances delete --quiet helloworld-from-factory
gcloud compute images delete --quiet helloworld-v02


gcloud container images delete --quiet "gcr.io/$PROJECT/packer"  --force-delete-tags

gcloud source repos delete --quiet helloworld-image-factory
