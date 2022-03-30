read -p "请输入节点的IP: " spip
read -p "请输入节点的端口: " spport
fakeid=$(echo $RANDOM | md5sum | cut -c 1-22)
md5="3d99ff138e1f41e931e58617e7d128e2"
spkey=$(echo -n "if5ax/?fakeid=$fakeid&spid=81117&pid=81117&spip=$spip&spport=$spport$md5" | md5sum | cut -d " " -f1)
url=$(curl -s -X GET -H "Host:dir.wo186.tv:809" -H "User-Agent:Mozilla/5.0 (Linux; Android 11; M2012K11AC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.104 Mobile Safari/537.36" "http://dir.wo186.tv:809/if5ax/?fakeid=$fakeid&spid=81117&pid=81117&spip=$spip&spport=$spport&spkey=$spkey" | grep -o "url.*" | cut -d '"' -f3 | sed 's/\\//g')
host=$(echo $url | cut -d "/" -f3)
path=$(echo $url | grep -o "/if5ax.*")
echo "IP与host: $(echo $host | cut -d ":" -f1)
端口: $(echo $host | cut -d ":" -f2)
Path: $path"
