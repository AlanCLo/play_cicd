#!/usr/bin/env bash

set -x

pushd /tmp || exit
git clone https://github.com/GoogleCloudPlatform/cloud-builders-community.git
cd cloud-builders-community/packer || exit
gcloud builds submit --config cloudbuild.yaml
rm -rf /tmp/cloud-builders-community
popd || exit
