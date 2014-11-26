## add
- github 上建立新的 repository，命名 demo
- git clone 到本地 github 目录
- 将自己之前的项目 copy 到该 demo 目录下
- 运行 cat .gitignore

**注意**: .gitignore的目录并不一定要是根目录，比如在 try 文件夹下建立一个 .gitignore 来设置 try 文件夹中的忽略文件：$ cat try/.gitignore 即可。其 ignore 的内容为
```
rd.txt
/rd/
```
- git add .
- git status 查看，除去被 ignore 的文件，其他文件都是 staged 状态，说明 gitignore 生效
- 修改其中一个被跟踪的文件 readme.md，再查看，则之后修改的文件状态为 modified (changes not staged for commit)

**注意**：add 的意思是 add this content to the next commit（即 add 后会进入 staged 状态）

## commit
- 将 git add .,之后git commit -m "inital"
- git status,此时nothing to commit, working directory clean
- 之后 push 之前再 commit 就需要使用 git commit --amend.可以修改提交说明，修改后，按Esc进入命令行，：，wq或wq!(强制执行)。之后可以查看本次的 commit 信息：master 分支， ccced2c 是 SHA-1 校验和。
```
$ git commit --amend
[master ccced2c] first commit
 158 files changed, 17500 insertions(+)
 create mode 100644 .classpath
 create mode 100644 .gitignore
```
- 直接 commit ,无需 add 。使用$git commit -a -m 'added'


## 查看修改
- git diff (查看 working directory 与 staged 区的不同)
- $git diff --staged（查看 staged 区与 commit 区的不同）

## 删除文件(指从 staging 区删除，也就是不再 track)
- 工作区和 staging 区都删除

```
xueyuan@EF-XUEYUAN /D/github/demo (master)
$ git rm try.md
rm 'try.md'

xueyuan@EF-XUEYUAN /D/github/demo (master)
$ git diff

xueyuan@EF-XUEYUAN /D/github/demo (master)
$ git diff --staged
diff --git a/try.md b/try.md
deleted file mode 100644
index e69de29..0000000
```
- 只 staging 区删除，工作区不删除(忽略 gitignore 时经常使用)

```
xueyuan@EF-XUEYUAN /D/github/demo (master)
$ git rm --cached try.md
rm 'try.md'

xueyuan@EF-XUEYUAN /D/github/demo (master)
$ git diff

xueyuan@EF-XUEYUAN /D/github/demo (master)
$ git diff --staged
diff --git a/try.md b/try.md
deleted file mode 100644
index e69de29..0000000
```

**注意**：$git rm log/\\*.log 中的“\”

## 重命名
$git mv file_from file_to

## 查看 commit 历史