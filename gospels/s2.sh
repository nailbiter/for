#!/bin/sh

declare -A eng_names
declare -A rus_names
eng_names["2 Кор"]="2-Corintians"
eng_names["Лк"]="Luke"
eng_names["Гал"]="Galatians"
eng_names["Мф"]="Matthew"
eng_names["Еф"]="Ephesians"
eng_names["Кол"]="Colossians"
eng_names["Евр"]="Hebrews"

get_chapter_rus()
{
	#rus_name, chapter,filename
	echo rus
}

get_chapter_eng()
{
	echo eng
}

get_chapter_chi()
{
	echo eng
}

IFS=$'\n'
for line in `cat index.html*|grep -A1 Порядок|grep Лит|sed 's/<\/a>.*<a href/<\/a>\n<a href/'|sed 's/.*<a h/<a h/g'|sed 's/<\/a>.*$//g'\
	|sed 's/.*"\(.*\)".*>\(.*\)/\1 -- \2/'`
do
	echo line is $line
	ptr=`echo $line | sed -e "s/.*--\s\s*\(.*\)/\1/"`
	link=`echo $line | sed -e "s/^\(.*\)\s*--.*/\1/"`
	echo ptr is $ptr
	book=`echo $ptr | sed "s/\([^\.]*\)\..*/\1/"`
	chapter=`echo $ptr|sed "s/[^XVI]*\([XVI][XVI]*\)[^XVI]*/\1/"`
done

echo ${eng_names["Кор"]}

#TODO: download_raw: english, russian, chinese, selectVerses(start,end), bring_to_txt, texify
#2 Кор., 194 зач., XI, 31 - XII, 9.
#Лк., 83 зач., XVI, 19-31.
#Гал., 200 зач., I, 11-19.
#Лк., 38 зач., VIII, 26-39.
#Гал., 200 зач., I, 11-19.
#Мф., 4 зач., II, 13-23.
#Гал., 203 зач., II, 16-20.
#Лк., 39 зач., VIII, 41-56.
#Гал., 215 зач., VI, 11-18.
#Лк., 53 зач., X, 25-37.
#Еф., 220 зач., II, 4-10.
#Лк., 66 зач., XII, 16-21.
#Еф., 221 зач., II, 14-22.
#Лк., 71 зач., XIII, 10-17.
#Еф., 224 зач., IV, 1-6.
#Лк., 91 зач., XVIII, 18-27 (Недели 30-й)*.
#Еф., 229 зач., V, 8-19.
#Лк., 85 зач., XVII, 12-19.
#Кол., 257 зач., III, 4-11 (Недели 29-й)*.
#Лк., 76 зач., XIV, 16-24 (Недели 28-й).
#Евр., 328 зач., XI, 9-10, 17-23, 32-40.
#Мф., 1 зач., I, 1-25.
