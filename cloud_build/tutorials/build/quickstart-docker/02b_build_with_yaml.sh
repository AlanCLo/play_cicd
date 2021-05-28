#!/usr/bin/env bash

set -x

gcloud builds submit --config cloudbuild.yaml
