## 模型之间的关系
1 to many
二维码有很多扫描记录

![](https://ws2.sinaimg.cn/large/006tKfTcly1frxz7egnokj30uo0o20ul.jpg)

## 功能需求
* 统计每个二维码扫描记录的总数量
* 更具记录的不同描述内容（scan，scan_subscribe）对记录数量进行分别统计

## 解决思路
1. 第一条需求可以根据 rails 自带的 counter_cache 功能来实作，也可以
用第三方库 counter_culture 统一进行各类缓存实作
2. 第二条需求，需要根据关联记录的内容，进行有条件地缓存。可以利用第三方
库：gem 'counter_culture' 来解决，这个库提供了更具条件进行缓存的功能
![](https://ws4.sinaimg.cn/large/006tKfTcly1frxzqp6guwj30pw06uwf5.jpg)
3. 也可以通过动态列名称来实现
![](https://ws2.sinaimg.cn/large/006tKfTcly1fry2b8fs67j30q0092q4a.jpg)

https://github.com/magnusvk/counter_culture#manually-populating-counter-cache-values
