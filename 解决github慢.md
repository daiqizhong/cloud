###解决Github访问超慢问题###

本站文章除注明转载外，均为本站原创或者翻译。
本站文章欢迎各种形式的转载，但请18岁以上的转载者注明文章出处，尊重我的劳动，也尊重你的智商；
本站部分原创和翻译文章提供markdown格式源码，欢迎使用文章源码进行转载；
本博客采用 WPCMD 维护；
本文标题：解决Github访问超慢问题
>本文链接：[http://zengrong.net/post/2092.htm](http://zengrong.net/post/2092.htm)


Github is so slowly.

这段时间访问 github 都非常慢，google了一下发现是github某个CDN被伟大的墙屏蔽所致。

出问题的应该是这个CDN: github.global.ssl.fastly.net，有图为证:

![](http://zengrong.net/wp-content/uploads/2014/04/github-global-ssl-fastly-net1.png)
CDN访问不畅

###解决方法就是使用万能的host文件，将这个域名映射到它所在的ip。###

访问 IPAddress.com 使用 IP Lookup 工具获得这个域名的ip地址（注意，该网站可能需要梯子）；
也可以直接点击 这个地址 查看，结果如下:
![](http://zengrong.net/wp-content/uploads/2014/04/github-global-ssl-fastly-net2.png)
>
	http://github.global.ssl.fastly.net.ipaddress.com/#ipinfo
	撰写本文时，该ip地址为：185.31.17.185 ；
	修改host文件；
	刷新本机DNS缓存。