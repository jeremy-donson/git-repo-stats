#!/bin/bash

# test script, test hook, and make it support gitignores.

# Run this bash script from the repo root to test and grab first stats.

# Rerun manually after commits OR
# Add git post-commit hook to rerun and gather more stats after every commit.

# CONSTANTS
TRUE=0
FALSE=1
GIT_VERSION_MIN='2.1'

# Open new shell to avoid quitting window on error.
bash

# ARE WE AT GIT REPO ROOT? CONFIRM ELSE EXIT WITH ERROR MESSAGE.
if [ -d .git/ ]; then REPO_ROOT=0; else echo -ne '\n\nWe are not at a git repo root, which is required for this script to work.\nRerun script from repo root.\nCurrent working dir:\n'; pwd; echo -ne '\n\n'; exit; fi

# WHAT IS PARENT DIR NAME?
CURRENT_PATH=$(pwd)
CURRENT_DIR=$(echo ${CURRENT_PATH} | rev | cut -d'/' -f1 | rev)

# WHEN WAS THIS REPO CREATED?
REPO_CREATE_TIME=$(stat .git/ | grep Birth | cut -d' ' -f4)

$ WHAT GIT STATE IS REPO IN?
GIT_STATE=$(git status)
if [  ]; then ; else if [  ]; then ; else ; fi

# DOES A gitignore FILE EXIST?
if [ -s '.gitignore' ]; then     IGNORES=0; else    IGNORES=1; fi

if [ ${IGNORES} ]
then
# Get size of every dir in repo: dirname bytes
# Create array of paths to du.
# No symbolic links.
for dir in ${DIRS} ; do $dir  ; done


else
# Filtering out files and dirs/ in gitignore.
# Get size of every dir in repo: dirname bytes
fi



# Report on repo trending.

# Git repo size tracking hooks.

# Git repo speed tracking hooks:  add, commit, push, pull


:' git-repo-stats-tests.sh = 

'

:' git-repo-stats-data.log = csv file
- git-repo-name:            ${CURRENT_DIR}
- repo-create-time:         ${REPO_CREATE_TIME}
- repo-owner-url:           
- git-repo-project-url:
- current-size:
- last-size:
- contrib-count:
- size-stats-file: git-repo-stats-data.dat
'