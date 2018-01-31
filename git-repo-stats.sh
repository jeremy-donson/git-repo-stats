#!/bin/bash

# test script, test hook, and make it support gitignores.

# Run this bash script from the repo root to test and grab first stats.

# Rerun manually after commits OR
# Add git post-commit hook to rerun and gather more stats after every commit.

# Open new shell to avoid quitting window on error.
bash

# CONSTANTS
TRUE=0
FALSE=1

# GIT VERSION ABOVE MIN?
GIT_VERSION_MIN=2.1
GIT_V_MIN_10=$(echo "scale=4; ${GIT_VERSION_MIN}*10" | bc | cut -d. -f1)
GIT_VERSION=$( git version | cut -d' ' -f3 )
GIT_V=$( echo ${GIT_VERSION} | cut -d'.' -f 1-2 )
GIT_V_10=$(echo "scale=4; ${GIT_V}*10" | bc | cut -d'.' -f1)
if [ ${GIT_V_MIN_10} -lt ${GIT_V_10} ]
then
echo -ne "\nInstalled version of git = ${GIT_VERSION}.\nVersion ${GIT_VERSION_MIN} or higher is required.\n"; exit
else
echo -ne "\nInstalled version of git = ${GIT_VERSION}.\n"
fi

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


:' git-repo-stats-tests.sh
- Test without gitignore
- Test with gitignore.
- Report on bytes, kb, mb.
- Set comparative time windows.
- Report on last 5 time windows.
- Install post-add OR post-commit hook.
- Test post-add OR post-commit hook.
- Identify language.
- Speak to testing tools.
- Test git version patterns.
- Inquire about README.md anchors.

'

:' git-repo-stats-data.log = csv file
- git-repo-name:            ${GIT_VERSION}
- git-repo-name:            ${CURRENT_DIR}
- repo-create-time:         ${REPO_CREATE_TIME}
- repo-owner-url:           
- git-repo-project-url:
- current-size:
- last-size:
- contrib-count:
- size-stats-file: git-repo-stats-data.dat
'

:' git-repo-stats-data.dat = csv file

'