echo -e "开始搭建联通809版x-ui" 
wget https://github.com/vaxilu/x-ui/releases/download/0.3.2/x-ui-linux-amd64.tar.gz
cd /root/
rm x-ui/ /usr/local/x-ui/ /usr/bin/x-ui -rf
tar zxvf x-ui-linux-amd64.tar.gz
chmod +x x-ui/x-ui x-ui/bin/xray-linux-* x-ui/x-ui.sh
cp x-ui/x-ui.sh /usr/bin/x-ui
cp -f x-ui/x-ui.service /etc/systemd/system/
mv x-ui/ /usr/local/
systemctl daemon-reload
systemctl enable x-ui
systemctl restart x-ui
rm -f /usr/local/x-ui/bin/xray-linux-amd64
wget --no-check-certificate -O /usr/local/x-ui/bin/xray-linux-amd64 "https://raw.githubusercontent.com/LYJ09X/809/main/xray-linux-amd64"
sudo chmod 777 /usr/local/x-ui/bin/xray-linux-amd64
echo -e "联通809版x-ui搭建完毕" 
