---
title: Flutter(Dart) Base64编解码
date: 2020-02-21 14:19:19
tags: 
  - Dart
  - Flutter
  - Base64
categories:
  - 开发
---
Flutter(Dart) Base64编解码转换(UTF8)：
<!-- more -->
首先需要：
{% codeblock lang:dart %}
import 'dart:convert';
{% endcodeblock %}

Base64编码：
{% codeblock lang:dart %}
String encoded = base64.encode(utf8.encode("input"));
{% endcodeblock %}

Base64解码：
{% codeblock lang:dart %}
String decoded = utf8.decode(base64.decode("aW5wdXQ="));
{% endcodeblock %}

Base64Url编码：
{% codeblock lang:dart %}
String encoded = base64Url.encode(utf8.encode("input"));
{% endcodeblock %}

Base64Url解码：
{% codeblock lang:dart %}
String decoded = utf8.decode(base64Url.decode("aW5wdXQ="));
{% endcodeblock %}
