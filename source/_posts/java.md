---
title: 用记事本编写第一个 java 程序
date: 2019-09-09 22:42:51
tags:
categories: java
---
>之所以用记事本来写不是为了装X或者什么的。反而恰恰是返璞归真，因为在用java语言进行程序开发时，首先是以纯文本的方式编写所有的java源程序，并保存成以.java为后缀的文件；然后将这些源程序用javac编译成.class后缀名的字节代码文件；字节代码不是被本地处理器执行的代码，而是能够被java虚拟机（JVM）执行的代码。最后用java运行工具在JVM执行java应用程序。 
由于JVM可以运行在不同的操作系统上，因此同一个字节代码文件可以跨平台运行。
+ javac
+ java 
![2.png](https://i.loli.net/2019/09/09/G7BTgl9F4qumOCU.png)

####  环境JDK
JDK为Java编辑的最基本的环境，安装就不多介绍了，不会的看百度[官方教程](https://jingyan.baidu.com/article/6dad5075d1dc40a123e36ea3.html)， JDK环境下载[点击此处](https://www.oracle.com/java/technologies/jdk8-downloads.html)
![jdk.png](https://i.loli.net/2019/09/09/rSosEimABPWq21n.png)

####  编写 java
用记事本编辑java文件，并且把后缀改成`.java`，文件名和类名要一样。
``` python
public class HelloWorld{
	public static void main(String[] args){
		System.out.println("Hello World!");
	}
}
```
输出结果如下：
![sc.png](https://i.loli.net/2019/09/09/qP9h1kxgNLWbwFT.png)