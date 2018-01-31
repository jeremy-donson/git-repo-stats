# TRACK + REPORT GIT REPO SIZE

## Table of Contents

- [Run Script From Repo Root Manually After Commit](#run-script-from-repo-root-manually-after-commit)
- [Rerun Script From Repo Root Manually After Commit](#rerun-script-from-repo-root-manually-after-commit)
- [Automate Execution As Git Hook](#automate-execution-as-git-hook)
- [Updating to New Releases](#updating-to-new-releases)
---

## Run script from repo root manually after commit

```
$ bash git-repo-stats.sh
```

## Rerun script from repo root manually after commit

```
$ bash git-repo-stats.sh
```

## Automate Execution As Git Hook

```
$ echo '
HOOK SCRIPT
' > git-repo-stats-post-commit-hook.sh

$ cd .git/hooks

$ ln -s ../git-repo-stats-post-commit-hook.sh .

$ git add .

$ git commit -m 'Added automation via post-commit hook.'

$ echo '# ** You should see the output of what you ran manually after each commit going forward. **'

```

## Updating to New Releases
```
blah
blah
blah
```
---

## [Facebook Group For Any Questions](https://www.facebook.com/groups/BigDataProcessing/)


