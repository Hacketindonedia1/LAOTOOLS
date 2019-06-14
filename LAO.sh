#!/bin/bash

### Color ###
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
blue='\e[0;34m'
cyan='\e[0;36m'
reset='\e[0m'

### uname ###
unm=$(uname -m)
un=$(uname)
uid=$(whoami)
hos=$(hostname)

### Requirements ###
if [ -f /data/data/com.termux/files/usr/bin/curl ];
then 
    sleep 1
    echo -e $blue"[✔]:[ curl ]: $lightgreen Found !" 
else
    echo -e $blue"[x]:[ curl ]: $red Not Found ! "
    echo ""
    sleep 1 
    echo -e $white"installing curl..."
    sleep 1
    apt-get install --force-yes -y curl
fi

sleep 1.9
echo
   if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; 
   then
         echo -e $lightgreen"[✔]:[ Internet ]: $cyan connected !" 
   else
         echo -e $lightgreen"[x]:[ Internet ]: $red Not connected !"
   fi
   
echo
sleep 2
echo -e $lightgreen"[✔]:[ User ID ]: $cyan $uid"
sleep 1.5
echo
echo -e $lightgreen"[✔]:[ Hostname ]: $cyan $hos"
echo
sleep 1.3

echo ""
sleep 1
echo "installation Finished"
echo ""
sleep 1
clear

### User IP Public ###
ip=$(curl -s https://api.ipify.org)
echo ""
sleep 1
echo ""
sleep 1
clear

echo -e $red"["$cyan"My IP ADDRESS : $ip"$red"]"
echo -e $red"++++++++++++++++++++++++"
echo -e $blue"TOOL LAO'NEIS AGUNG"$red"+"
echo -e $blue"ANONYMOUS CYBER ARMY"$red"+"
echo -e $blue"HACKER SEJATI"$red"+"
echo -e $red"++++++++++++++++++++++++"
echo -e $blue"Author"$red"Lao'neis agung"
echo -e $blue"Program"$red"["$lightgreen"bash-CLI"$red"]"

echo -e $red"["$lightgreen"1"$red"]"$blue"Reverse IP Lookup"
echo -e $red"["$lightgreen"2"$red"]"$blue"Reverse DNS Lookup"
echo -e $red"["$lightgreen"3"$red"]"$blue"Whois Lookup"
echo -e $red"["$lightgreen"4"$red"]"$blue"GeoIP Lookup"
echo -e $red"["$lightgreen"5"$red"]"$blue"On-line Testing Ping"
echo -e $red"["$lightgreen"6"$red"]"$blue"Traceroute"
echo -e $red"["$lightgreen"7"$red"]"$blue"Subdomain Scanner"
echo -e $red"["$lightgreen"8"$red"]"$blue"CMS Detector"
echo -e $red"["$lightgreen"9"$red"]"$blue"Link Grabber"
echo -e $red"["$lightgreen"10"$red"]"$blue"nmap"
echo -e $red"["$lightgreen"11"$red"]"$blue"HTTP Headers"
echo -e $red"["$lightgreen"12"$red"]"$blue"Zone Transfer"
echo -e $red"["$lightgreen"13"$red"]"$blue"Subnet Lookup"
echo -e $red"["$lightgreen"14"$red"]"$blue"Find Shared DNS"
echo -e $red"["$lightgreen"e"$red"]"$blue"Exit"
echo -e $white "╭─────"$red"["$lightgreen"Eden@localhost"$red"]"$white"──────"$cyan"~/Lao'neis agung"$white
read -p " ╰─$ "  Information

if [ $Information = "1" ] || [ $Information = "01" ]
then
echo -e $red""
read -p "Enter IP Domain Target ~# " target
echo -e $white""
curl https://api.hackertarget.com/reverseip/?q=$target
fi

if [ $Information = "2" ] || [ $Information = "02" ]
then
echo -e $red""
read -p "Enter IP Domain Target ~# " target
echo -e $white""
curl https://api.hackertarget.com/reversedns/?q=$target
fi

if [ $Information = "3" ] || [ $Information = "03" ]
then
echo -e $red""
read -p "Enter Your Domain Target ~# " target
echo -e $white""
curl https://api.hackertarget.com/whois/?q=$target
fi

if [ $Information = "4" ] || [ $Information = "04" ]
then
echo -e $red""
read -p "Enter IP Domain Target ~# " target
echo -e $white""
curl https://api.hackertarget.com/geoip/?q=$target
fi

if [ $Information = "5" ] || [ $Information = "06" ]
then
echo -e $red""
read -p "Enter IP Domain Target ~# " target
echo -e $white""
curl https://api.hackertarget.com/nping/?q=$target
fi

if [ $Information = "6" ] || [ $Information = "06" ]
then
echo -e $red""
read -p "Enter Your Domain Target ~# " target
echo -e $white""
curl https://api.hackertarget.com/mtr/?q=$target
fi

if [ $Information = "7" ] || [ $Information = "07" ]
then
echo -e $red""
read -p "Enter Your Domain Target ~# " target
curl https://api.hackertarget.com/dnslookup/?q=$target
fi

if [ $Information = "8" ] || [ $Information = "08" ]
then
echo -e $red""
read -p "Enter Your Domain Target ~# " target
echo -e $white""
curl -G https://whatcms.org/APIEndpoint/Detect \
--data-urlencode key="1314a8bd055bd32832786ac7ec7f95ecd90c2ccc648dd41c10498b6fdc08bc774de70b" \
--data-urlencode url="$target"
fi

if [ $Information = "9" ] || [ $Information = "09" ]
then
echo -e $red""
read -p "Enter Your Domain Target ~# " target
echo -e $white""
curl https://api.hackertarget.com/pagelinks/?q=$target
fi

if [ $Information = "10" ] || [ $Information = "10" ]
then
echo -e $red""
read -p "Enter Your Domain Target ~# " target
echo -e $white""
curl https://api.hackertarget.com/nmap/?q=$target
fi

if [ $Information = "11" ] || [ $Information = "11" ]
then
echo -e $red ""
read -p "Enter Your Domain Target ~# " target
echo -e $white""
curl https://api.hackertarget.com/httpheaders/?q=$target
fi

if [ $Information = "12" ] || [ $Information = "12" ]
then
echo -e $red""
read -p "Enter Your Domain Target ~# " target
echo -e $white""
curl http://api.hackertarget.com/zonetransfer/?q=$target
fi

if [ $Information = "13" ] || [ $Information = "13" ]
then
echo -e $red""
read -p "Enter Your Domain Target ~# " target
echo -e $white""
curl http://api.hackertarget.com/subnetcalc/?q=$target
fi

if [ $Information = "14" ] || [ $Information = "14" ]
then
echo -e $red""
read -p "Enter Your Domain Target ~# " target
echo -e $white""
curl https://api.hackertarget.com/findshareddns/?q=$target
fi

if [ $Information = "15" ] || [ $Information = "15" ]
then
echo -e $red ""
read -p "Enter Your Domain Target ~# " target
curl http://reverseip.domaintools.com/search/?q=$target
fi

if [ $Information = "e" ] || [ $Information = "E" ]
then
clear
exit
fi
