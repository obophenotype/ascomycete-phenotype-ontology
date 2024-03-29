#!/bin/bash

set -e

ONT="apo"
OBO="http://purl.obolibrary.org/obo"
RELEASEDATE=`date +%Y-%m-%d`
BASE="$OBO/$ONT"
RELEASE_URIBASE="$BASE/releases/$RELEASEDATE/$ONT"

git config --global user.email "${GH_USERNAME}@users.noreply.github.com"
git config --global user.name "${GH_USERNAME}"

# Assumes being run from root of repository
robot annotate -i src/ontology/$ONT-edit.obo -O $BASE.owl -V $RELEASE_URIBASE.owl --annotation owl:versionInfo $RELEASEDATE convert --check false -f obo -o $ONT.obo convert --check false -f owl -o $ONT.owl
git add $ONT.owl
git add $ONT.obo
git commit -m "Creating OBO and OWL release files"
git tag -a v$RELEASEDATE -m "Release $RELEASEDATE"
