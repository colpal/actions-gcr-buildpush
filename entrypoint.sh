#!/bin/sh

set -ev

IMAGE_NAME="$INPUT_GCR_HOST/$INPUT_GCR_PROJECT/$INPUT_GCR_REPO$INPUT_GCR_IMAGE_NAME"

echo "$INPUT_GCR_SERVICE_ACCOUNT" | base64 -d > /tmp/service_account.json
md5sum /tmp/service_account.json

gcloud auth activate-service-account --key-file=/tmp/service_account.json

gcloud config set project $INPUT_GCR_PROJECT

gcloud auth configure-docker

docker build -t $IMAGE_NAME:$INPUT_IMAGE_TAG --build-arg GITHUB_SHA="$GITHUB_SHA" --build-arg GITHUB_REF="$GITHUB_REF" $INPUT_DOCKERFILE_PATH

docker push $IMAGE_NAME:$INPUT_IMAGE_TAG
gcloud container images add-tag $IMAGE_NAME:$INPUT_IMAGE_TAG $IMAGE_NAME:latest
