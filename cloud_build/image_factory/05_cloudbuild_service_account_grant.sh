#!/usr/bin/env bash

set -x

PROJECT=$(gcloud config get-value project)
CLOUD_BUILD_ACCOUNT=$(gcloud projects get-iam-policy $PROJECT --filter="(bindings.role:roles/cloudbuild.builds.builder)"  --flatten="bindings[].members" --format="value(bindings.members[])")

gcloud projects add-iam-policy-binding $PROJECT \
--member $CLOUD_BUILD_ACCOUNT \
--role roles/editor
