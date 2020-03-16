---
title: Flutter ListTile 自定义垂直边距、标题与两边的水平间距
date: 2020-03-15 19:54:24
tags: 
  - Flutter
categories:
  - 开发
---
自定义 Flutter ListTile <code>minVerticalPadding</code> 最小垂直边距、<code>horizontalTitleGap</code> 标题与两边的水平间距。
<!-- more -->
1. 引入依赖 [pub.dev:list_tile_more_customizable](https://pub.dev/packages/list_tile_more_customizable)：
{% codeblock lang:yaml %}
dependencies:
  list_tile_more_customizable: ^1.2.1
{% endcodeblock %}
2. 将需要处的 <code>ListTile</code> 替换成 <code>ListTileMoreCustomizable</code>，即可直接修改 <code>minVerticalPadding</code>、<code>horizontalTitleGap</code> 以修改相应的值：
{% codeblock lang:dart %}
// 类似于
ListTileMoreCustomizable(
    title: Text("标题"),
    horizontalTitleGap: 0.0, // 标题与两边的水平间距
    minVerticalPadding: 0.0, // 最小垂直边距
);
{% endcodeblock %}

[pub.dev 地址](https://pub.dev/packages/list_tile_more_customizable)
[源码 GitHub 地址](https://github.com/Playhi/list_tile_more_customizable)

