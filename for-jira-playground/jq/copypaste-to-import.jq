#pbpaste|jq -Rs '[[.|split("\n")|to_entries|.[]|{n:(.key/3)|trunc,v:.value}]|group_by(.n)|.[]|{v:.[-2].v,d:.[-1].v}]'

#cat (random-fn.py -r .txt)|rs -e  -C 0 3|jq -Rs '[.|split("\n")|.[]|select((.|length)>1)|split("\t")|{summary:.[1],parent_id:"JC-54",issue_type_id:10006,project_id:"10003",original_time_estimate_minutes:(.[2][:-3]|tonumber)}]'| jira-cli.py api issue import -f-

#
[
	[
		[.|split("\n")|.[]|ltrimstr(" ")|rtrimstr(" ")|ltrimstr(" ")|ltrimstr(" ")|ltrimstr(" ")|select((.|length)>0)]
		|to_entries|.[]|{n:(.key/3)|trunc,v:.value}]|group_by(.n)|.[]|
		{
			summary:.[-2].v,
			original_time_estimate_minutes:(.[-1].v[:-3]|tonumber),
			issue_type_id:10011,
			project_id:"10005",
			#parent_id:"JC-54",
		}
]
