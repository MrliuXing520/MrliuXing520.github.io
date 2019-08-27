---
title: Markdown图片居中
date: 2019-08-11 20:36:06
tags:
categories: Markdown
---
####  Markdown对图片进行居中设置大小
标准的markdown中提供了图片的设置大小的操作，但是在本地把图片编辑好的代码生成静态文件发现图片不能显示了。使用下面方法可以完美解决，当然希望以后的hexo版本希望能够解决这个问题。
#### 一般的markdown语法设置图片大小
标准的markdown，在图片后面加上 “=200x300” (200是宽度，300是高度，也可以之定义宽度)，就能实现下面的效果。但是有一些版本的hexo不行。
``` python
![]("图片地址"=200x)
```
#### 使用img标签，设置图片大小

直接在markdown中使用HTML标签，多数markdown工具都支持。
``` python
<img width=200 src="图片地址" >
```
#### 图片居中

markdown目前没有支持图片居中的，所有的图片要么是100%宽度，支持设置大小的markdown一般也是左对齐的，所以居中只能靠HTML标签了。
``` python
<div align=center>
![](图片地址 =200x)
</div>
```
或者：

``` python
<div align=center>
  <img width=200 src="图片地址" >
</div>
```
效果如下：

<div align=center>
  <img width=200 src="http://qnfile.devzhao.com/blog/2018-10-22-jhk-1540210533410.jpeg" >
</div>
