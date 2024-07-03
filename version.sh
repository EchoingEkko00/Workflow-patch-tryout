#!/bin/bash

# File that contains the version number
VERSION_FILE="version.txt"

# Read the current version number
CURRENT_VERSION=$(cat $VERSION_FILE)

# Split the version number into its components
IFS='.' read -r -a VERSION_PARTS <<< "$CURRENT_VERSION"

# Increment the patch number
PATCH=${VERSION_PARTS[2]}

# Form the new version number
NEW_VERSION="${VERSION_PARTS[0]}.${VERSION_PARTS[1]}.$PATCH"

# Write the new version number to the file
echo $NEW_VERSION > $VERSION_FILE