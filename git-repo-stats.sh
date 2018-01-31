#!/bin/bash

# CONSTANTS
TRUE=0
FALSE=1

# what is parent dir name?
CURRENT_PATH=$(pwd)
CURRENT_DIR=$(echo ${CURRENT_PATH} | rev | cut -d'/' -f1 | rev)

# are we at repo root?
if [ -d .git/ ]; then REPO_ROOT=0; else REPO_ROOT=1; fi

# When was repo started?
REPO_CREATE_TIME=$(stat .git/ | grep Birth | cut -d' ' -f4)

# Is there a gitignore?
if [ -s '.gitignore' ]; then     IGNORE_FILE=0; else    IGNORE_FILE=1; fi

# Create array of paths to du.
# No symbolic links.
# Filtering out dirs/ in gitignore.
PATHS_TO_QUERY=$(ls -a1d .*/ */ | grep -v '..'||'.')



# git repo size tracking hooks

# leverage gitignore data

# git repo add and commit time tracking hooks

:' data structure:  csv file = git-project-inventory
- git-repo-name:            ${CURRENT_DIR}
- repo-create-time:         ${REPO_CREATE_TIME}
- repo-owner-url:           
- git-repo-project-url:
- current-size:
- last-size:
- contrib-count:
- size-stats-file:
'