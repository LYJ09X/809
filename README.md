搭建宝塔面板，进去以后只装一个nginx其他不要装，宝塔面板点安全，放行54321和443端口

yum install -y wget && wget -O install.sh http://download.bt.cn/install/install.sh && sh install.sh

使用下面脚本一键搭建809版本X-UI

国内脚本:bash <(curl -s https://cdn.jsdelivr.net/gh/LYJ09X/809@main/x-ui.sh)

国外脚本:bash <(curl -s https://raw.githubusercontent.com/LYJ09X/809/main/gw-x-ui.sh)

登录x-ui后台，新建一个443端口的ws节点！不会有菜鸡还傻傻的去改X-UI里的东西吧！

关于809自动更新我借鉴各位大佬的方法写了一下脚本

国内脚本:bash <(curl -s https://cdn.jsdelivr.net/gh/LYJ09X/809@main/809.sh)

国外脚本:bash <(curl -s https://raw.githubusercontent.com/LYJ09X/809/main/gw-809.sh)

登录宝塔面板，点击定时任务，任务类型:Shell脚本，名称随意，执行周期设置4个小时，脚本内容:/root/lt809ml/sub 添加以后执行一下，订阅地址就是:http://你的ip/809

感谢各位大佬的开源，浅殇在这里谢谢各位做的贡献！交流群:643037308
