#!/bin/bash
# random cloudflare anycast ip
declare -i bandwidth
declare -i speed
read -p "请设置期望到 CloudFlare 服务器的带宽大小(单位 Mbps):" bandwidth
speed=bandwidth*128*1024
starttime=`date +'%Y-%m-%d %H:%M:%S'`
while true
do
	while true
	do
		declare -i n
		declare -i per
		rm -rf icmp temp log.txt
		mkdir icmp
		n=0
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 1.0.0.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 1.1.1.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.23.121.202 > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.20.88 > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.182.158 > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.28.23.240 > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.31.203.250 > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 172.64.83.158 > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.27.106.196 > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.104.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.105.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.106.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.107.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.108.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.109.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.11.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.110.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.111.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.112.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.113.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.114.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.115.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.116.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.117.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.118.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.119.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.12.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.120.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.121.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.122.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.123.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.124.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		i=$[($RANDOM*2+1)%255]
		n=$[$n+1]
		ping -c 30 -i 0.2 -n -q 104.16.125.$i > icmp/$n.log&
		per=$n*100/2847
		while true
		do
			p=$(ps -ef | grep ping | grep -v "grep" | wc -l)
			if [ $p -ge 200 ]
			then
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				sleep 0.5
			else
				echo 正在测试 ICMP 丢包率:进程数 $p,已完成 $per %
				break
			fi
		done
		cat icmp/*.log | sed -n '3~5p;4~5p' | sed -n '{N;s/\n/\t/p}' | cut -f1 -d'%' | awk '{print $2,$NF}' | sort -k 2 -n | awk '{print $1}' | sed '101,$d' > ip.txt
		rm -rf icmp
		echo 选取100个丢包率最少的IP地址下载测速
		mkdir temp
		for i in `cat ip.txt`
		do
			echo $i 启动测速
			curl --resolve speed.cloudflare.com:443:$i https://speed.cloudflare.com/__down?bytes=1000000000 -o temp/$i -s --connect-timeout 2 --max-time 10&
			sleep 0.5
		done
		echo 等待测速进程结束,筛选出三个优选的IP
		sleep 15
		echo 测速完成
		ls -S temp > ip.txt
		rm -rf temp
		n=$(wc -l ip.txt | awk '{print $1}')
		if [ $n -ge 3 ]; then
			first=$(sed -n '1p' ip.txt)
			second=$(sed -n '2p' ip.txt)
			third=$(sed -n '3p' ip.txt)
			rm -rf ip.txt
			echo 优选的IP地址为 $first - $second - $third
			echo 第一次测试 $first
			curl --resolve speed.cloudflare.com:443:$first https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$first
				break
			fi
			max=$[$max/1024]
			echo 峰值速度 $max kB/s
			echo 第二次测试 $first
			curl --resolve speed.cloudflare.com:443:$first https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$first
				break
			fi
			max=$[$max/1024]
			echo 峰值速度 $max kB/s
			echo 第一次测试 $second
			curl --resolve speed.cloudflare.com:443:$second https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$second
				break
			fi
			max=$[$max/1024]
			echo 峰值速度 $max kB/s
			echo 第二次测试 $second
			curl --resolve speed.cloudflare.com:443:$second https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$second
				break
			fi
			max=$[$max/1024]
			echo 峰值速度 $max kB/s
			echo 第一次测试 $third
			curl --resolve speed.cloudflare.com:443:$third https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$third
				break
			fi
			max=$[$max/1024]
			echo 峰值速度 $max kB/s
			echo 第二次测试 $third
			curl --resolve speed.cloudflare.com:443:$third https://speed.cloudflare.com/__down?bytes=1000000000 -o /dev/null --connect-timeout 5 --max-time 15 > log.txt 2>&1
			cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep -v 'k\|M' >> speed.txt
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep k | sed 's/k//g'`
			do
				declare -i k
				k=$i
				k=k*1024
				echo $k >> speed.txt
			done
			for i in `cat log.txt | tr '\r' '\n' | awk '{print $NF}' | sed '1,3d;$d' | grep M | sed 's/M//g'`
			do
				i=$(echo | awk '{print '$i'*10 }')
				declare -i M
				M=$i
				M=M*1024*1024/10
				echo $M >> speed.txt
			done
			declare -i max
			max=0
			for i in `cat speed.txt`
			do
				max=$i
				if [ $i -ge $max ]; then
					max=$i
				fi
			done
			rm -rf log.txt speed.txt
			if [ $max -ge $speed ]; then
				anycast=$third
				break
			fi
			max=$[$max/1024]
			echo 峰值速度 $max kB/s
		fi
	done
		break
done
	max=$[$max/1024]
	endtime=`date +'%Y-%m-%d %H:%M:%S'`
	start_seconds=$(date --date="$starttime" +%s)
	end_seconds=$(date --date="$endtime" +%s)
	clear
	echo $anycast 满足 $bandwidth Mbps带宽需求,峰值速度 $max kB/s,总计用时 $((end_seconds-start_seconds)) 秒