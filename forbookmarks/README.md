# howto

1. copy the most recent `json/coords...` file into new file, say `json/coords_AAA.json`
1. edit `json/consts.json`, so `COORDFILE` points to `json/coords_AAA.json` (check also other keys)
1. edit `json/dates.json`
1. edit `json/coords_AAA.json` so to have new coordinates in this file
1. `make mf`
1. `make all`
