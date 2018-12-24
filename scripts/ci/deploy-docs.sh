#!/bin/bash

# Exit on error
set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../..

if test "$TRAVIS_SECURE_ENV_VARS" = "true" -a "$TRAVIS_BRANCH" = "master" -a "$TRAVIS_PULL_REQUEST" = "false";
then
  echo "Publish docs to https://QgisModelBaker.github.io/docs";

  pushd ${DIR}
  mkdir publish
  cd publish
  git clone git@github.com:opengisch/QgisModelBaker.git --branch gh-pages
  mkdir -p QgisModelBaker/docs
  cd QgisModelBaker
  git rm docs -r || true
  mkdir docs || true
  cp ../../build/html/* docs/ -r
  git add -A
  git commit -m "Automatic doc update\n\nhttps://github.com/opengisch/QgisModelBaker-docs/commit/${TRAVIS_COMMIT}"
  git push
  popd
else
  echo "Not publishing: Not the latest master version."
fi
