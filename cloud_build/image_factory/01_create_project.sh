#!/usr/bin/env bash

# I have a GCP Organisation in my learning tenant like in the tutorial

echo "Making a project for just this test"

set -x
gcloud alpha billing accounts list

set +x

echo "Enter Project Name:"
read -r
PROJECT=${REPLY}

echo "Enter the Billing Account name - pick from list above: "
read -r
BILLING_ACCOUNT=${REPLY}


set -x
gcloud projects create "$PROJECT"

gcloud beta billing projects link "$PROJECT" \
    --billing-account=$(gcloud alpha billing accounts list --format='value(name)' --filter="(displayName='$BILLING_ACCOUNT')")


gcloud config set project "$PROJECT"
gcloud config set compute/zone australia-southeast1-a
