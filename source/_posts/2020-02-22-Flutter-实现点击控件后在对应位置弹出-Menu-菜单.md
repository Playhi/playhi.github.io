---
title: Flutter 实现点击控件后在对应位置弹出 Menu 菜单
date: 2020-02-22 19:51:15
tags: 
  - Flutter
categories:
  - 开发
---
Flutter 实现点击控件后在对应位置弹出 Menu 菜单
<!-- more -->
先上图：
![效果图](/images/postsImgs/Screenshot_1582374460.png)

直入主题，直接贴关键代码：
{% codeblock lang:dart %}
GestureDetector(
  child: //Child,
  onLongPressStart: (details) { // 一般的 onLongPress 没有位置信息，所以套了一个 GestureDetector 
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        details.globalPosition.dx,
        details.globalPosition.dy,
        details.globalPosition.dx,
        details.globalPosition.dy,
      ),
      items: <PopupMenuEntry>[
        PopupMenuItem(child: Text("123")), // Menu Item
      ],
    );
  },
);
{% endcodeblock %}

如果要单击而不是长按实现的话，把 onLongPressStart 换成 onTapUp 就有了。
