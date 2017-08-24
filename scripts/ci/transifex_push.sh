#!/bin/bash
if test "$TRAVIS_SECURE_ENV_VARS" = "true" -a "$TRAVIS_BRANCH" = "master";
then
  echo -e "[https://www.transifex.com]\nhostname = https://www.transifex.com\nusername = api\npassword = ${TRANSIFEX_API_TOKEN}\ntoken =\n" > ~/.transifexrc
  make gettext
  tx push -s
fi
