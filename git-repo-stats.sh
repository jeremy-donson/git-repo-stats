#!/bin/bash

# Avoid quitting window on exit error.
bash

# CONSTANTS
TRUE=0
FALSE=1

# FUNCTIONS

# IS GIT LOCALLY INSTALLED?
which git > /dev/null 2>&1 || { echo -ne '\nERROR: No git executable found.\nGit is a required local executable for this script.\nInstall git locally and try again.\n'; exit; }

# GIT VERSION ABOVE MIN?
GIT_VERSION_MIN=2.1
GIT_V_MIN_10=$(echo "scale=4; ${GIT_VERSION_MIN}*10" | bc | cut -d. -f1)
GIT_VERSION=$( git version | cut -d' ' -f3 )
GIT_V=$( echo ${GIT_VERSION} | cut -d'.' -f 1-2 )
GIT_V_10=$(echo "scale=4; ${GIT_V}*10" | bc | cut -d'.' -f1)
if [ ${GIT_V_MIN_10} -lt ${GIT_V_10} ]; then echo -ne "\nInstalled version of git = ${GIT_VERSION}.\nVersion ${GIT_VERSION_MIN} or higher is required.\n"; exit; fi

# ARE WE AT GIT REPO ROOT? CONFIRM ELSE EXIT WITH ERROR MESSAGE.
if [ -d .git/ ]; then REPO_ROOT=0; else echo -ne '\n\nWe are not at a git repo root, which is required for this script to work.\nRerun script from repo root.\nCurrent working dir:\n'; pwd; echo -ne '\n\n'; exit; fi

# WHAT IS PARENT DIR NAME?
CURRENT_PATH=$(pwd)
CURRENT_DIR=$(echo ${CURRENT_PATH} | rev | cut -d'/' -f1 | rev)

# WHEN WAS THIS REPO CREATED?
REPO_CREATE_TIME=$(stat .git/ | grep Birth | cut -d' ' -f4)

# WHAT GIT STATE IS REPO IN?
GIT_STATE=$(git status)


# DOES NON-EMPTY gitignore FILE EXIST?
if [ -s '.gitignore' ]; then     IGNORES=0; else    IGNORES=1; fi

# Main logic for gathering size data.
if [ ${IGNORES} -eq 0 ]
then
# Create array of paths to du.
# find . -mindepth 2 -maxdepth 2 -type d -name 14 -exec du -s {} +
# Get size of every dir in repo: dirname bytes.
# No symbolic links.
for dir in ${DIRS} ; do $dir  ; done
else if [ ${IGNORES} -eq 1 ]
# Filtering out files and dirs/ in gitignore.
# Get size of every dir in repo: dirname bytes
for dir in ${DIRS} ; do $dir  ; done

fi

# DO WE WANT TO REPORT ON .git/ FOLDER SIZE?
if [ "${1}" == "include_dot_git" ]

# Report on repo trending.

# Git repo size tracking hooks.

# Git repo speed tracking hooks:  add, commit, push, pull


:' git-repo-stats-tests.sh
- Test without gitignore
- Test with gitignore.
- Report on bytes, kb, mb.
- Install post-add OR post-commit hook.
- Set comparative time windows.
- Report on last 5 time windows.
- Test git version patterns.
- Test post-add OR post-commit hook.
- Identify language.
- Speak to testing tools.
- Inquire about README.md anchors.

'

:' git-repo-stats-data.log = csv file
- git-repo-name:            ${GIT_VERSION}
- git-repo-name:            ${CURRENT_DIR}
- repo-create-time:         ${REPO_CREATE_TIME}
- size-stats-file:          git-repo-stats-data.dat
'

:' git-repo-stats-data.dat = csv file
- commit-tstamp
- 
- 

'