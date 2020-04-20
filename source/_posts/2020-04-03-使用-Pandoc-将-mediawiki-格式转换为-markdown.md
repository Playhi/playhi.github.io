---
title: 使用 Pandoc 将 mediawiki 格式转换为 markdown
date: 2020-04-03 17:57:54
tags: 
  - MediaWiki
  - Markdown
categories:
  - 教程
---
下载安装 [Pandoc](https://pandoc.org/installing.html)，打开终端，使用<!--more-->`pandoc [源文件] -f mediawiki -t markdown -s -o [生成后的地址]`即可。  
其他类型转换，包括`epub`、`dokuwiki`、`docbook`、`docx`、`html`等也类似。  
帮助信息键入`pandoc --help`即可查看。

