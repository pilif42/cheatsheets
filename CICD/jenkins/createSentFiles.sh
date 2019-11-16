#!/usr/bin/env bash
############################################################################################################
#
# This script creates a .SENT file for each file found in /opt/app/data/username/inbound/.
# If you have sample.json, you will end up with a new file called sample.json.SENT.
#
# It is called in our Jenkins pipeline.
#
############################################################################################################
for file in /opt/app/data/username/inbound/*.json
do
  touch "${file/.json/.json.SENT}"
done