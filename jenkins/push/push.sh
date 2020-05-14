#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u 6043 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG 6043/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push 6043/$IMAGE:$BUILD_TAG
