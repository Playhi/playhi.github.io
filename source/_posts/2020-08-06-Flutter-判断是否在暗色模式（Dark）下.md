---
title: Flutter 判断是否在暗色模式（Dark）下
tags:
  - Flutter
categories:
  - 开发
date: 2020-08-06 16:21:47
---
有时出于各种需要，要在运行时判断当前的主题是否处在暗色模式（`brightness == Brightness.dark`）下，一般情况下这样就可以了：<!--more-->
```dart
bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}
```
为什么这么做呢，因为 `theme_data.dart` 中就有一句：
```dart
final bool isDark = _brightness == Brightness.dark;
```

那为什么说 __一般情况下__ 呢，还是看 `theme_data.dart` ：
```dart
final Brightness _brightness = brightness ?? colorScheme?.brightness ?? Brightness.light;
```

所以有时候，需要这样做：
```dart
bool isDarkMode(BuildContext context) {
  return Theme.of(context).colorScheme.brightness == Brightness.dark;
}
```


