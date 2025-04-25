#!/bin/bash

# First parameter is optional commit message, defaults to "update"
COMMIT_MESSAGE=${1:-"update"}
# Second parameter is a major tag, defaults to "v1"
MAJOR_TAG=${2:-"v1"}

git add .
git commit -m "$COMMIT_MESSAGE"
git push

git tag -af "$MAJOR_TAG" -m "$COMMIT_MESSAGE"
git push origin "$MAJOR_TAG" --force