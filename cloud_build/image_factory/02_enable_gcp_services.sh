#!/usr/bin/env bash

set -x

gcloud services enable \
    sourcerepo.googleapis.com \
    cloudapis.googleapis.com compute.googleapis.com \
    servicemanagement.googleapis.com storage-api.googleapis.com \
    cloudbuild.googleapis.com secretmanager.googleapis.com
