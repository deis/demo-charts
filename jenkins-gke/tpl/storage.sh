#!/bin/bash
source $HELM_GENERATE_DIR/tpl/values.toml

gcloud compute disks create jenkins-data --size ${pdSize} --zone ${pdZone}
