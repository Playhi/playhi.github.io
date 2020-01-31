---
title: android studio aapt2 报错
date: 2018-01-25 17:32:04
tags:
---
最近新开了好几个坑，自从升到AS3.0，每个项目都是一开始就aapt2报错，迷，记录下临时解决方法。<br>在 gradle.properties 里加入一行 android.enableAapt2=false 即可。<br>看网上的内容，似乎这个问题在3.0测试版就有了，不知道我这是个例还是WIN10 x64都这样。
