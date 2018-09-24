use strict;
use warnings;

sub heisei{
  return 1988+$_[0]
}
sub makeHref{
  return sprintf('<a href="%s">%s</a>',$_[0],$_[1]);
}
my $GSoC = '<a href="https://summerofcode.withgoogle.com/?csw=1">Google Summer of Code</a>';

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
  [heisei(24).'-'.heisei(25), $months[6].'-'.$months[5],
  'Internship at Computer Graphics and Geometry Modeling Lab (under Prof. <a href="https://www.cs.nctu.edu.tw/cswebsite/members/detail/jhchuang">Jung-Hong Chuang</a>)'],
  # 大学院マルチメディア工学研究科にてインターンシップ（担当：莊榮宏教授）
  [heisei(25), $months[8].'-'.$months[12], 'Desing and Implementation of
  <a href="https://link.springer.com/chapter/10.1007/978-3-642-31284-7_32">A Practical
  Smart Metering System Supporting Privacy</a> by
  <a href="https://www.linkedin.com/in/hsiao-ying-lin-6a43a715/">H.-Y. Lin</a>
   et al.
   (implementation requested and financed by
   <a href="https://www.linkedin.com/in/hsiao-ying-lin-6a43a715/">H.-Y. Lin</a>
   )'],
  # A Practical Smart Metering System Supporting Privacyという林孝盈の研究に基づいたプライバシーの面を考慮した公共料金自動検針システムの開発と実装
  [heisei(25),$months[5].'-'.$months[9],
    sprintf('Succesfully completed %s 2014 program (for <a href="https://opencv.org">OpenCV library</a>)',$GSoC)],
  # Google Summer of Code 2014参加者 ( OpenCV ライブラリ )
  [heisei(26),$months[5].'-'.$months[9],
    sprintf('Succesfully completed %s 2015 program (for <a href="https://opencv.org">OpenCV library</a>)',$GSoC)],
  # Google Summer of Code 2015参加者 ( OpenCV ライブラリ )
  # ["&nbsp;"," "," "],
  [2016,$months[10].'-'.$months[11],'Unity Developer at <a href="http://www.app-studio.jp">株式会社アプリ工房</a>'],
  ["2016-2017",$months[11].'-'.$months[05],
    sprintf("Unity Developer at %s",
      makeHref('https://www.facebook.com/AjpGames/','AJP Games')
    )],
  ["2017",$months[06].'-'.$months[07],
    sprintf("Unity Developer at %s (also doing research in machine learning, e.g. using %s)",
      makeHref("http://www.pocket-queries.co.jp/","Pocket Queries"),
      makeHref("https://www.tensorflow.org/?hl=ja","TensorFlow")
    )],
  ["2018",$months[07].'-'.$months[9],sprintf("System Engineer at %s (Client-Side development with React JS)",
      makeHref("https://www.dreampirates.jp","Dream Pirates"))],
  ["&nbsp;"," "," "],
  ["&nbsp;"," "," "],
);
our @langExams = (
  # [heisei(21), $months[6], 'Graduated from <i>Kyiv Natural Science Lyceum No. 145</i>'],
  [heisei(25),$months[8],'TOEFL iBT, score: 112/120'],
  # TOEFL英語能力試験 点数:112/120
  [heisei(25),$months[11],'Test of Chinese as a Foreign Language Level 3/5,  score: 94/100'],
  # 華語文能力測検(中国語能力試験)  レベル 3/5  点数: 94/100
);
our @progLangs = (
  ['C/C++        7 years of experience'],
  ['OpenCV, OpenGL, openSSL, Network Programming, Apache Hadoop'],
  ['Java, Android Application Development'],
  ['Lisp, Scheme'],
  ['JavaScript, React JS'],
  ['C#, Unity Game Engine'],
);
our @langs = (
  ['Chinese (fluent), Japanese (fluent)'],
  ['English (fluent), German (basic)'],
  ['Russian (native), Ukrainian (native)'],
);

1;
