all: bookmark_2019-09-22.pdf 

bookmark_2019-09-22.pdf: ../makebookmarks.pl coords.json
	$< --date 2019-09-22 --cpdf /Users/oleksiileontiev/bin/cpdf --coords coords.json \
		2> .log.txt
