#!/bin/sh

for i in {1..11}
do
	m=$((2+7*i))
	day=`date --date="+$m day" +%y-%m-%d`
	echo $day
	#wget http://www.patriarchia.ru/bu/20$day/
done
cat index.html*|grep -A1 Порядок|grep Лит
