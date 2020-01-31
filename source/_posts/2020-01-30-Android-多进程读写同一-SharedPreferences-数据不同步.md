---
title: Android 多进程读写同一 SharedPreferences 数据不同步
date: 2018-12-19
tags: 
  - Android
categories:
  - 开发
---
<i>（慢慢整理下这么长时间的一些收获吧～）</i><br>自我感觉，在 Android 中， SharedPreferences 是个很简单粗暴好用的东西～不过不是100%好用。<br>之前写早期的 FreezeYou 的时候，后台服务和主程序（处于两个进程内）数据直接用了 SharedPreferences ，然后这边改了，那边经常会不变，很是难受，最后发现，模式那边传了 MODE_PRIVATE（也就是0），如果用 MODE_MULTI_PROCESS 就没问题了，但是呢，<i><a href="https://developer.android.google.cn/reference/android/content/Context.html#MODE_MULTI_PROCESS">“This constant was deprecated in API level 23.”</i></a>又让我放弃了这个做法，Google 那边似乎是推荐了  ContentProvider ，不过最终我没有用 ContentProvider ，而用了 Tray （https://github.com/grandcentrix/tray）来保存多进程使用的内容，直到现在为止，也没有发生什么奇怪的事情。