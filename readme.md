## 分支
- 新建分支：git branch 分支名
- 切换到该分支：git checkout 分支名
补充：以上两条语句等价于一句：git checkout -b 分支名
转换分支的时候最好保持一个清洁的工作区域。（也就是commit之后再转换）
Git 会把工作目录的内容恢复为检出某分支时，它所指向的那个 commit 快照。
- 将A分支合并到主分支 master：
	- git checkout master 
	- git merge A
		- 当master是A的直接祖先时：快速合并完成
		- 当master与A有共同祖先，并且没有修改同一文件的同一部分内容时：Git可以自行找到最佳合并祖先
		- 但是如果修改了同一文件的同一部分：只能手动解决！解决步骤：
			- 用git status查看冲突 unmerged
			- 手动解决
			- 解决后，用git add标记为已解决
			- 用git status查看没有问题后，用 commit 完成这次合并提交
- 删除分支A： git branch -d A
- 查看所有分支：git branch -v
- 已被并入当前分支的分支：$ git branch --merged
- 尚未合并的分支:git branch --no-merged
##多人开发
他人：修改tryagain,已经push了
自己：修改tryagain,readme,增加text1，push时提示出错
所以应该先pull，但由于修改了同一文件tryagain，所以pull时，自动merge失败，需手动合并。
打开目录下的tryagain文件，修改后保存

