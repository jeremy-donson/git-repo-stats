# TRACK GIT REPO SIZE TRENDING AS REPORTABLE STATS

## GOAL: GATHER AND TRACK REPO SIZE TO STAY CODE-BLOAT-AWARE

## SECTIONS

1. [RUN THIS SCRIPT]
2. [RERUN MANUALLY]
3. [WATCH TRENDING MANUALLY]

4. [OPTIONALLY AUTOMATE RUN AS HOOK](#OPTIONAL:-Automate-gather-stats-and-report-on-trending-after-each-commit.)

5. [GLITCH SUPPORT](#[Post-ALL-Questions-Here](https://www.facebook.com/groups/BigDataProcessing/))

## Updating to New Releases

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

## [Post ALL Questions Here](https://www.facebook.com/groups/BigDataProcessing/)