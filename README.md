# network auto connect bat file

+ introduce
    + it can use in school network in China(not only szu), it can auto connect the school network if is disconnected.
    + there are two bat file,the first one used in the dormitory area,the second one used in the teaching area,for in szu,these two area have different host to onload.
+ use:
    + change the username and the password in the bat file,and choice the correct host to load.
    + if you are from szu, choice the host depend on which area you are in. else, change the host to the onload host in your school.
    + also, you can add the file to the auto-start file when you boot.

+ 用途： 校园网自动重连程序，只需修改用户名和密码以及登录网址即可实现断线重连
+ tip:  在使用过程发现在ping指令中`ping baidu.com` ping的是ipv4地址，而`ping www.baidu.com` ping的是ipv6地址，而在教育网中ipv6是自动连接不需登录就能用的（至少我们学校是szu)，因此在ipv6环境下可能会导致没联网也ping的通，因此会导致程序失效，只需将ping的地址改为`baidu.com`即可（任意一个ipv4网站皆可）