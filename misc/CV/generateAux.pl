use strict;
use warnings;

sub heisei{
  return 1988+$_[0]
}
our @months = (
  '',"Jan","Feb",
  "Mar","Apr","May",
  "Jun","Jul","Aug",
  "Sep","Oct","Nov",
  "Dec",
);
our @education = (
  [heisei(21), $months[6], 'Graduated from <i>Kyiv Natural Science Lyceum No. 145</i>'],
  #'ウクライナ・キエフ自然科学ライシーアム第145号'
  [heisei(21), $months[9], 'Enrolled into <i>National Taiwan Chiao Tung University</i> (Department of Applied Mathematics, Undergraduate Program)'],
  #台湾国立交通大学応用数学学科入学
  [heisei(25),$months[2],'6 month Student Exchange at <i>Hong Kong University</i>'],
  #香港大学数学学科交換留学生(6ヶ月間)
  [heisei(25),$months[6],'Graduated from <i>National Taiwan Chiao Tung University</i>, Double Degree in Applied Math and Computer Science'],
  #台湾国立交通大学応用数学及びコンピュータサイエンス学科(ダブルディグリー)
  [heisei(26),$months[04],'Enrolled into <i>The University of Tokyo</i> (Graduate School of Mathematical Sciences, Master Degree Program)'],
  #東京大学・大学院数理科学研究科入学</span><span class="T29">（修士課程）
  [heisei(28),$months[02],'Obtained Master Degree from <i>The University of Tokyo</i>'],
  #東京大学・大学院数理科学研究科</span><span class="T32"> </span><span class="T31">卒業
  [heisei(28),$months[04],'Enrolled into <i>The University of Tokyo</i> (Graduate School of Mathematical Sciences, PhD Program)'],
  #東京大学・大学院数理科学研究科入学</span><span class="T29">（博士課程）
  ["&nbsp;"," "," "],['&nbsp;','',''],['&nbsp;','',''],['&nbsp;','',''],['&nbsp;','',''],['&nbsp;','',''],['&nbsp;','',''],['&nbsp;','',''],
);
our @work = (
  #TODO
  [heisei(24).'-'.heisei(25), $months[6].'-'.$months[5], 'Graduated from <i>Kyiv Natural Science Lyceum No. 145</i>'],
  # 大学院マルチメディア工学研究科にてインターンシップ（担当：莊榮宏教授）
  #TODO
  [heisei(25), $months[8].'-'.$months[12], 'Graduated from <i>Kyiv Natural Science Lyceum No. 145</i>'],
  # A Practical Smart Metering System Supporting Privacyという林孝盈の研究に基づいたプライバシーの面を考慮した公共料金自動検針システムの開発と実装
#
# 平成 25
#
#
# 5-9
#
#
# Google Summer of Code 2014参加者 ( OpenCV ライブラリ )
#
# 平成 26
#
#
# 5-9
#
#
# Google Summer of Code 2015参加者 ( OpenCV ライブラリ )
);
our @langExams = (
  [heisei(21), $months[6], 'Graduated from <i>Kyiv Natural Science Lyceum No. 145</i>'],
);
our @progLangs = (
  ['C/C++        7 years of experience'],
  ['OpenCV, OpenGL, openSSL, Network Programming, Apache Hadoop'],
  ['Java, Android Application Development'],
  ['Lisp, Scheme'],
);
our @langs = (
  ['Chinese (fluent), Japanese (fluent)'],
  ['English (fluent), German (basic)'],
  ['Russian (native), Ukrainian (native)'],
);

1;
