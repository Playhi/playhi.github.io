---
title: 解决使用 MMKV Ashmem 报 MMKVContentProvider has invalid authority
tags:
  - Android
categories:
  - 开发
date: 2022-01-27 21:10:56
---
前一阵子用了 `MMKV` 的 `mmkvWithAshmemID` ([Ashmem MMKV 是 Android 里的一个 memory-only 的多进程共享 key-value 存储，在一个 App 的所有进程退出后，会自动消失。她不使用任何文件来做存储，因此很适合在一个 App 内的众多进程之间共享敏感数据。](https://github.com/Tencent/MMKV/wiki/FAQ_cn))，结果在非主进程使用的时候直接报了 `java.lang.IllegalStateException: MMKVContentProvider has invalid authority`，<!--more-->拿 Demo 看了看，发现这段  
```
        <provider
            android:name="com.tencent.mmkv.MMKVContentProvider"
            android:authorities="xx.yy.zz.MMKVContentProvider"
            android:exported="false" />
```
我给漏了 :joy: ，依赖里也没自带，或许是因为只有 `Ashmem` 的时候才需要吧，所以依赖里默认没带上。加上就好了～  
记一笔，万一还有别的人也漏了，啊哈哈哈哈哈～  



