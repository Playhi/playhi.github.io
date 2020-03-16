---
title: Flutter ListTile 获得点击详情
date: 2020-03-15 19:32:39
tags: 
  - Flutter
categories:
  - 开发
---
Flutter ListTile <code>onTap</code>、<code>onLongPress</code> 事件获得详细信息（如点击位置等）
<!-- more -->
1. 引入依赖 [pub.dev:list_tile_more_customizable](https://pub.dev/packages/list_tile_more_customizable)：
{% codeblock lang:yaml %}
dependencies:
  list_tile_more_customizable: ^1.2.1
{% endcodeblock %}
2. 将需要处的 <code>ListTile</code> 替换成 <code>ListTileMoreCustomizable</code>，然后 <code>onTap</code>、<code>onLongPress</code> 事件就包含了 <code>TapDownDetails</code>，直接使用即可。
{% codeblock lang:dart %}
// 类似于
ListTileMoreCustomizable(
    title: Text("标题"),
    onTap: (details){},
    onLongPress: (details){},
);
{% endcodeblock %}

[pub.dev 地址](https://pub.dev/packages/list_tile_more_customizable)
[源码 GitHub 地址](https://github.com/Playhi/list_tile_more_customizable)

