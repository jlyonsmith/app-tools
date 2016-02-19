#!/usr/bin/env bash

# Passed in from build script
if [[ -z "$USER_NAME" || -z "$USER_PASSWORD" ]]; then
  echo Must set USER_NAME and USER_PASSWORD variables. Use single quotes around the USER_PASSWORD value to escape special bash characters.
  exit 1
fi

ITMSTRANSPORTER=/Applications/Xcode.app/Contents/Applications/Application\ Loader.app/Contents/itms/bin/iTMSTransporter

# See http://qntm.org/bash for explanation of why we escape everything in the password string

security add-generic-password -a $USER_NAME -s "app-tools/iTunesConnect" -w $(echo $USER_PASSWORD | sed -E 's/([^a-zA-Z0-9])/\1/g') -T "$ITMSTRANSPORTER" -T $(which security)

# This password can be deleted with:
#
# security delete-generic-password -a ${USER_NAME} -s "iTunesConnect - ${USER_NAME}"
#
# It can be retrieved with:
#
# security find-generic-password -a ${USER_NAME} -s "iTunesConnect - ${USER_NAME}" -w
