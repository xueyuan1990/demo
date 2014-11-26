## 远程仓库
### Showing Your Remotes
pushing and pulling data to and from remote repositories
```
$git remote -v
origin  https://github.com/schacon/ticgit (fetch)
origin  https://github.com/schacon/ticgit (push)
```
### Adding Remote Repositories
git remote add [shortname] [url]
```
$git remote add pb https://github.com/paulboone/ticgit
$git remote -v
origin  https://github.com/schacon/ticgit (fetch)
origin  https://github.com/schacon/ticgit (push)
pb  https://github.com/paulboone/ticgit (fetch)
pb  https://github.com/paulboone/ticgit (push)
$git fetch pb
```