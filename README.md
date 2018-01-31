# Run this bash script from the repo root to test and grab first stats.

```
$ bash git-repo-stats.sh
```

# # Rerun manually after commits OR
# # Add git post-commit hook to rerun and gather more stats after every commit.

```
echo '

' > git-repo-stats-post-commit-hook.sh

cd .git/hooks

ln -s ../git-repo-stats-post-commit-hook.sh .
```