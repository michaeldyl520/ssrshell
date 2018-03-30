#! /bin/sh
paramsTotal=$#
ssConfigPath="/etc/shadowsocks.json"
ssrSsPath="/home/${USER}/website/github/shadowsocksr/shadowsocks/local.py"
if [ $paramsTotal -gt 1 ]; then
	printf "Only one parameter can be entered.\n"
	exit
fi
case $1 in
start)
	sudo python $ssrSsPath -c $ssConfigPath -d start
	;;
stop)
	sudo python $ssrSsPath -c $ssConfigPath -d stop
	;;
*)
	echo "Please enter the parameters start or stop"
	;;
esac
