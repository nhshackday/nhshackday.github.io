#!/bin/bash
# Split on "/", ref: http://stackoverflow.com/a/5257398/689223
REPO_SLUG_ARRAY=(${TRAVIS_REPO_SLUG//\// })
REPO_OWNER=${REPO_SLUG_ARRAY[0]}
# replaces "/" or "." with "-"
# sed -r is only supported in linux, ref http://stackoverflow.com/a/2871217/689223
# Domain names follow the RFC1123 spec [a-Z] [0-9] [-]
# The length is limited to 253 characters
# https://en.wikipedia.org/wiki/Domain_Name_System#Domain_name_syntax
REPO_NAME=`echo "${REPO_SLUG_ARRAY[1]}" | sed -r 's/[\/|\.]+/\-/g'`

if [ "$TRAVIS_PULL_REQUEST" != "false" ] && [ "$TRAVIS_SECURE_ENV_VARS" != "false" ]
then
  DEPLOY_DOMAIN=https://${TRAVIS_PULL_REQUEST}-pr-${REPO_NAME}-${REPO_OWNER}.surge.sh
  surge --project ./_site --domain $DEPLOY_DOMAIN;
  # Using the Issues api instead of the PR api
  # Done so because every PR is an issue, and the issues api allows to post general comments,
  # while the PR api requires that comments are made to specific files and specific commits
  GITHUB_PR_COMMENTS=https://api.github.com/repos/${TRAVIS_REPO_SLUG}/issues/${TRAVIS_PULL_REQUEST}/comments
  curl -H "Authorization: token ${GITHUB_API_TOKEN}" --request POST ${GITHUB_PR_COMMENTS} --data '{"body":"Latest Travis CI automatic staging build of this PR: '${DEPLOY_DOMAIN}'"}'
fi