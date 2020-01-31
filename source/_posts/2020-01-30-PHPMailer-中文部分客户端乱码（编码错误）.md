---
title: PHPMailer 中文部分客户端乱码（编码错误）
date: 2019-01-21
tags: 
  - PHP
categories:
  - 开发
---
一开始用了 <code>&dollar;mail->Charset = 'UTF-8';</code>，一直不成，debug 设到 2，输出里发现用的还是 iso-8859-1 ，没生效，再去官方的 GitHub 兜了一圈，发现 <code>&dollar;mail->CharSet = 'utf-8';</code> 就可以了~ 一起来找不同吧[躺倒]。 <br>邮件主题乱码的话，可以尝试下<code>&dollar;mail->Subject = "=?UTF-8?B?" . base64_encode(标题) . "?=";</code>，我这是有效的。