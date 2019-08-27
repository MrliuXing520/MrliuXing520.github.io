---
title: Visual Studio Code隐藏目录解决方案
date: 2019-08-19 13:56:51
tags:
categories: HEXO
---
#### git备份上传失败原因
不少朋友在备份自己的博客是会出现失败的情况，打开Github后会发现有很多文件都没有上传成功，这是因为你本地博客目录下和主题目录下`.git`文件存在所导致的。而细心的人会第一时间去删除`.git`，但会发现并没有这个文件，这是因为`.git`本身是隐藏的，所以无法看到。
#### 解决方案
在`默认设置`中，Visual Studio Code 将下列文件文件排除在显示列表中：
> "files.exclude": {
    "**/.git": true,
    "**/.svn": true,
    "**/.hg": true,
    "**/.DS_Store": true
}

你可以修改用户设置或者工作区设置，将.git文件添加到显示列表中
> "files.exclude": {
     "**/.git": false
}

如果在Visual Studio Code的设置页面中，可以使用下面的步骤修改设置：
`1. 文件 > 首选项 > 设置`
图一：设置页面
![Alt text](https://i.loli.net/2019/08/19/Rdr6qOaxCSvNwgc.png)

`2. 用户设置 > 文本编辑器 > Exclude，找到对应排除的项”**/.git“，并删除它，隐藏的.git文件就会自动出现`，如下图：

图二：排除文件页面
 ![Alt text](https://i.loli.net/2019/08/19/sx21O4rVCqBtjTz.png)

图三：显示.git文件的效果
 ![Alt text](https://i.loli.net/2019/08/19/Yz2lns4iv7X9jda.png)

这样就完美解决了找不到`.git` 的问题，将文件删除后所以指令都无报错。