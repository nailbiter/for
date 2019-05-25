all:[% FOREACH item IN DATES %] pdfs/bookmark_[%YEAR%]-[%item.0%]-[%item.1%].pdf [%END%]
[% FOREACH item IN DATES %]
pdfs/bookmark_[%YEAR%]-[%item.0%]-[%item.1%].pdf: makebookmarks.pl json/[%COORDFILE%].json
	./makebookmarks.pl --date [%YEAR%]-[%item.0%]-[%item.1%] --cpdf [%CPDF%] --coords json/[%COORDFILE%].json 2> log/[%YEAR%]-[%item.0%]-[%item.1%].log.txt
[% END %]
