---
title: 易语言 Sqlite3 支持库报 syntax error
date: 2020-03-16 16:43:46
tags: 
  - 易语言
categories:
  - 开发
---
难得又摸了下几年前的易语言代码，现在要把一些数据放数据库里保存一份，结果居然卡在了新建表，一直报 <code>syntax error</code>，<!-- more -->找了半天原因，最后突然发现表名是纯数字的，然后加对<code>'</code>就好了 :sweat_smile: 

