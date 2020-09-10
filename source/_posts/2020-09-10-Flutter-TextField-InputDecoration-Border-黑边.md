---
title: Flutter TextField InputDecoration Border 黑边
tags:
  - Flutter
categories:
  - 开发
date: 2020-09-10 14:33:29
---
整一个 `TextField` 的边框效果，拿 `border:` 尝试了半天，普通状态下总有个黑边，自定义的颜色也没看到，<!--more-->再看了眼 `TextField` 的一堆属性，突然发现 `TextField` 不仅有 `border` ，还有 `errorBorder`、`focusedBorderfocusedBorder`、`focusedErrorBorder`、`disabledBorder`、`enabledBorder` 这几个 border …… 好了，问题解开 :joy: 

示例：
```dart
          TextField(
              onChanged: (str) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white.withOpacity(0.5),  // 边框颜色
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white.withOpacity(0.3),  // 边框颜色
                  ),
                ),
                filled: true,  // 不然 fillColor 等 不生效
                fillColor: Colors.white.withOpacity(0.6),
                focusColor: Colors.white.withOpacity(0.5),
                hoverColor: Colors.white.withOpacity(0.3),
              ),
              maxLines: 1,
              keyboardType: TextInputType.text,
              onSubmitted: (text) {},
            ),
```
