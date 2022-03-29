第一步也是最重要的连接SSH以后请先搭建联通809版x-ui

国内脚本:bash <(curl -s https://cdn.jsdelivr.net/gh/LYJ09X/809@main/x-ui.sh)

国外脚本:bash <(curl -s https://raw.githubusercontent.com/LYJ09X/809/main/gw-x-ui.sh)

然后登录x-ui后台，新建一个ws节点，推荐443和80端口，如果没网可换其他端口，有的还真是端口有问题！

用下面一键脚本获取路径和ip

内外通用:bash <(curl -s https://cdn.jsdelivr.net/gh/LYJ09X/809@main/809.sh)

输入你的ip和端口会返回路径和ip，复制的时候千万注意！！！在SSH里直接复制可能会有回车请手动复制记事本里删除换行！

不会有菜鸡还傻傻的去改X-UI里的东西吧，建好节点别动，直接去改代理软件填入信息！

感谢各位大佬的开源，浅殇在这里谢谢各位做的贡献！交流群:643037308
