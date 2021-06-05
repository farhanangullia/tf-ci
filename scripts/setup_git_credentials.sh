#!/bin/sh

echo "Attempting to setup git credentials..."
git config --global credential.helper store
git config --global user.email "$GITLAB_USER_EMAIL"
git config --global user.name "$GITLAB_USER_NAME"
echo "https://gitlab-ci-token:${CI_JOB_TOKEN}@gitlab.com" >~/.git-credentials
echo "Git credentials set..."
