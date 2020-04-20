---
title: 解决 Flutter showModalBottomSheet 被键盘遮挡
date: 2020-04-20 21:19:36
tags: 
  - Flutter
categories:
  - 开发
---
在使用 showModalBottomSheet 底部弹出内容时，如果唤起了键盘、输入法，showModalBottomSheet 中的内容往往会被挡住，<!--more-->给 showModalBottomSheet 设置 isScrollControlled，再套一个 SingleChildScrollView 以及 设定一个 padding 一般就能解决问题了。  

示例：
``` dart
            showModalBottomSheet(
              isScrollControlled: true,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextField(
                          keyboardType: TextInputType.text,
                          autofocus: true,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
```

