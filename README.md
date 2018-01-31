# TRACK + REPORT GIT REPO SIZE

## TABLE OF CONTENTS

- [RUN THIS SCRIPT]
- [RERUN MANUALLY]
- [WATCH TRENDING MANUALLY]
- [OPTIONALLY AUTOMATE RUN AS HOOK](#optional:-automate)
- [Updating to New Releases](#updating-to-new-releases)
- [TEST README](README-grom.md)
---

## Table of Contents

- [Updating to New Releases](#updating-to-new-releases)

---

## Run this script manually from repo root to test execution and gather first repo stats.

```
$ bash git-repo-stats.sh
```

## Rerun manually after commits.

```
$ bash git-repo-stats.sh
```

## Report manually on repo size trending.

```
$ bash git-repo-stats.sh stats
```


## OPTIONAL: Automate gather stats and report on trending after each commit.

```
$ echo '
HOOK SCRIPT
' > git-repo-stats-post-commit-hook.sh

$ cd .git/hooks

$ ln -s ../git-repo-stats-post-commit-hook.sh .

$ git add .

$ git commit -m 'Added automation via post-commit hook.'

# ** You should see the output of what you ran manually after each commit going forward. **

```

## Updating to New Releases
```
blah
blah
blah
```
---

## [Facebook Group For Any Questions](https://www.facebook.com/groups/BigDataProcessing/)


