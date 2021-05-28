#!/usr/bin/env bash


set -x

gcloud compute firewall-rules create allow-winrm-ingress-to-packer \
    --allow tcp:5986 --target-tags allow-winrm-ingress-to-packer
