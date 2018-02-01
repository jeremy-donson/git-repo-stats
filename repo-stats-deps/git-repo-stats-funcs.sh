
:' 
# WHAT GIT STATE IS REPO IN?
GIT_STATE=$(git status)

# CONSTANTS
TRUE=0
FALSE=1


#GIT VERSION ABOVE MIN?
GIT_VERSION_MIN=2.1
GIT_V_MIN_10=$(echo "scale=4; ${GIT_VERSION_MIN}*10" | bc | cut -d. -f1)
GIT_VERSION=$( git version | cut -d' ' -f3 )
GIT_V=$( echo ${GIT_VERSION} | cut -d'.' -f 1-2 )
GIT_V_10=$(echo "scale=4; ${GIT_V}*10" | bc | cut -d'.' -f1)
if [ ${GIT_V_MIN_10} -lt ${GIT_V_10} ]; then echo -ne "\nInstalled version of git = ${GIT_VERSION}.\nVersion ${GIT_VERSION_MIN} or higher is required.\n"; exit; fi
'