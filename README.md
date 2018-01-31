# TRACK + REPORT ON GIT REPO SIZE

⚠️  Warning: CODE BLOAT IS A BAD SIGN

## Table of Contents

- [Prerequisites](#prerequisites)
- [Run Script From Repo Root Manually After Commit](#run-script-from-repo-root-manually-after-commit)
- [Rerun Script From Repo Root Manually After Commit](#rerun-script-from-repo-root-manually-after-commit)
- [Automate Execution As Git Hook](#automate-execution-as-git-hook)
- [Git Repo Stats Project Support Group](#project-questions-support-group)

---

## Prerequisites:

1. We have a current version of git locally installed.

  - OSX:  First install [homebrew package manager](http://brew.sh) and use it to install git: $ brew install git
  - Win: Install []() ELSE install [scoop package manager](http://scoop.sh) and use it to install git: $ scoop install git
  - Linux: $ apt-get install git-core

2. We have been using [git](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control) and [github](http://www.github.com) to manage online project assets, from media to source code.

3. We want to preventable avoid code bloat by tracking your git repo sizes.

⚠️  Warning: CODE BLOAT IS A BAD SIGN!!!!

- [Git Repo Stats Project Support Group](#project-questions-support-group)

## Run script from repo root manually after commit

```
$ bash git-repo-stats.sh
```

## Rerun script from repo root manually after commit

```
$ echo 'blahblahblahblahblahblahblahblahblahblahblahblah' > new file
$ git status
$ git add .
$ git status
$ git commit -m 'Added some stuff.'
$ git status
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

## Project Questions Support Group

- [All git-repo-stats Questions](https://www.facebook.com/groups/BigDataProcessing/)
