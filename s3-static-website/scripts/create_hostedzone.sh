#!/bin/bash
date_time=$(date +"%Y-%m-%d %H-%M-%S-%N")
aws route53 create-hosted-zone \
  --name="icydigital.com" \
  --caller-reference="$date_time"
