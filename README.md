第一步也是最重要的连接SSH以后请先搭建联通809版x-ui

国内脚本:bash <(curl -s https://cdn.jsdelivr.net/gh/LYJ09X/809@main/x-ui.sh)

国外脚本:bash <(curl -s https://raw.githubusercontent.com/LYJ09X/809/main/gw-x-ui.sh)

然后登录x-ui后台，新建一个ws节点，推荐443和80端口，如果没网可换其他端口，有的还真是端口有问题！

用下面一键脚本获取路径和ip

内外通用:bash <(curl -s https://cdn.jsdelivr.net/gh/LYJ09X/809@main/809.sh)

输入你的ip和端口会返回路径和ip，复制的时候千万注意！！！在SSH里直接复制可能会有回车请手动复制记事本里删除换行！

不会有菜鸡还傻傻的去改X-UI里的东西吧，建好节点别动，直接去改代理软件填入信息！

关于809自动更新我借鉴各位大佬的方法写了一下脚本

搭建宝塔面板，进去以后只装一个nginx其他不要装，x-ui的ws节点端口用443，宝塔面板点安全，放行54321和443端口

yum install -y wget && wget -O install.sh http://download.bt.cn/install/install.sh && sh install.sh

部署自动更新脚本如下

国内脚本:bash <(curl -s https://cdn.jsdelivr.net/gh/LYJ09X/809@main/zd809.sh)

国外脚本:bash <(curl -s https://raw.githubusercontent.com/LYJ09X/809/main/gw-zd809.sh)

登录宝塔面板，点击定时任务，任务类型:Shell脚本，名称随意，执行周期设置4个小时，脚本内容:/root/lt809ml/sub 添加以后执行一下，订阅地址就是:http://你的ip/809

感谢各位大佬的开源，浅殇在这里谢谢各位做的贡献！交流群:643037308
