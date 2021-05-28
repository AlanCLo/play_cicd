#!/usr/bin/env bash

# Just following the step in the tute for windows images

set -x

# Work out which echo format to use to not output a new line char
if [ "$(echo -n)" = "-n" ]; then
  n=""
  c="\c"
else
  n="-n"
  c=""
fi

echo $n "windows-2019$c" | gcloud secrets create image_factory-image_family --replication-policy="automatic" --data-file=-
echo $n "golden-windows$c" | gcloud secrets create image_factory-image_name --replication-policy="automatic" --data-file=-
echo $n "n1-standard-1$c" | gcloud secrets create image_factory-machine_type --replication-policy="automatic" --data-file=-
echo $n "australia-southeast1$c" | gcloud secrets create image_factory-region --replication-policy="automatic" --data-file=-
echo $n "australia-southeast1-a$c" | gcloud secrets create image_factory-zone --replication-policy="automatic" --data-file=-
echo $n "default$c" | gcloud secrets create image_factory-network --replication-policy="automatic" --data-file=-
echo $n "allow-winrm-ingress-to-packer$c" | gcloud secrets create image_factory-tags --replication-policy="automatic" --data-file=-
