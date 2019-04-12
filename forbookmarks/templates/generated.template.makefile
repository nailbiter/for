all:[% FOREACH item = DATES %] pdfs/[%YEAR%]-[%item.0%]-[%item.1%].pdf [%END%]
[% FOREACH item = DATES %]
pdfs/[%YEAR%]-[%item.0%]-[%item.1%].pdf: makebookmarks.pl json/makebookmarksCoords.json
	./makebookmarks.pl --date [%YEAR%]-[%item.0%]-[%item.1%] --coords json/makebookmarksCoords.json 2> log/[%YEAR%]-[%item.0%]-[%item.1%].log.txt
[% END %]
