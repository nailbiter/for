#!/bin/sh

#global var's
MAC0=8C
MAC1=85
MAC2=90
MAC3=B5
MAC4=42
MAC5=B8
OS="MacOS+X"
#OS="Linux%B7%CF+OS"

#17/09/2018
curl -X POST "https://regist.ms.u-tokyo.ac.jp/net-touroku/net-touroku-dhcp2.php3?OMAJINAI=%B4%C1%BB%FA%A5%B3%A1%BC%A5%C9%A4%F2%B4%D6%B0%E3%A4%A8%A4%CA%A4%A4%A4%E8%A4%A6%A4%CB%21&EtherAddress="$MAC0"%3A"$MAC1"%3A"$MAC2"%3A"$MAC3"%3A"$MAC4"%3A"$MAC5"&Root=leontiev&KishuMei=leontiev&OS="$OS"&ShoyuSha=421&HeyaBango=421&RenrakuSaki=Alex+Leontiev&Bikou=&RiyouKigen=2018-10-01"
curl -X POST "https://regist.ms.u-tokyo.ac.jp/net-touroku/net-touroku-dhcp3.php3?OMAJINAI=%B4%C1%BB%FA%A5%B3%A1%BC%A5%C9%A4%F2%B4%D6%B0%E3%A4%A8%A4%CA%A4%A4%A4%E8%A4%A6%A4%CB%21&EtherAddress="$MAC0"%3A"$MAC1"%3A"$MAC2"%3A"$MAC3"%3A"$MAC4"%3A"$MAC5"&Root=leontiev&KishuMei=leontiev&OS="$OS"&ShoyuSha=421&HeyaBango=421&RenrakuSaki=Alex+Leontiev&Bikou=&RiyouKigen=2018-10-01"
