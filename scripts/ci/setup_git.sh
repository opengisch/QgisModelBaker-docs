#!/bin/bash

if test "$TRAVIS_SECURE_ENV_VARS" = "true" -a "$TRAVIS_BRANCH" = "master";
then
  openssl aes-256-cbc -K $encrypted_e87d7d0ced73_key -iv $encrypted_e87d7d0ced73_iv -in opengisch_rsa.enc -out opengisch_rsa -d;
  chmod 600 ~/.ssh/id_rsa;
  git config --global user.email "info@opengis.ch";
  git config --global user.name "opengisch";
  git config --global push.default simple;
fi
