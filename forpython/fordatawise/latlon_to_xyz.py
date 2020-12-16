#!/usr/bin/env python3
"""===============================================================================

        FILE: fordatawise/latlon_to_xyz.py

       USAGE: ./fordatawise/latlon_to_xyz.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-12-16T12:14:02.432902
    REVISION: ---

==============================================================================="""

import click
import math
import os
import re
import sys


def _toRad(deg):
    return deg/180.0*math.pi


def _get_tile_xyz(lat, lon, zoom):
    """taken from https://stackoverflow.com/questions/21513646/how-to-get-x-y-z-coordinates-of-tile-by-click-on-leaflet-map"""
    #    var xtile = parseInt(Math.floor( (lon + 180) / 360 * (1<<zoom) ));
    #    var ytile = parseInt(Math.floor( (1 - Math.log(Math.tan(lat.toRad()) + 1 / Math.cos(lat.toRad())) / Math.PI) / 2 * (1<<zoom) ));
    #    return "" + zoom + "/" + xtile + "/" + ytile;
    xtile = (math.floor((lon + 180) / 360 * (1 << zoom)))
    ytile = (math.floor((1 - math.log(math.tan(_toRad(lat)) +
                                      1 / math.cos(_toRad(lat))) / math.pi) / 2 * (1 << zoom)))
    return (zoom, xtile, ytile)


@click.command()
@click.option("-l","--latlon")
@click.option("-z", "--zoom", type=int, default=12)
@click.option("-i", "--iformat", type=click.Choice("comma nespace".split(" ")), default="comma")
@click.option("-o", "--oformat", type=click.Choice(["geojson_io"]), default="geojson_io")
@click.option("--open-url/--no-open-url", default=True)
def latlon_to_xyz(latlon, zoom, iformat, oformat, open_url):
    if latlon is None:
        latlon = sys.stdin.read().strip()

    if iformat == "comma":
        latlon = {k: v for k, v in zip(
            "lat lon".split(" "), map(float, latlon.split(",")))}
    elif iformat == "nespace":
        #ex.: 35°52'47.8"N 139°40'17.6"E
        m = re.match(r"""(\d+)°(\d+)'(\d+(\.\d+)?)"N (\d+)°(\d+)'(\d+(\.\d+)?)"E""",latlon)
        assert m is not None
        print(list(enumerate([m.group(i) for i in range(9)])))
        latlon = {k:float(m.group(4*i+1)) + float(m.group(4*i+2))/60 + float(m.group(4*i+3))/3600 for i,k in enumerate("lat lon".split(" "))}
    else:
        raise NotImplementedError(f"iformat: {iformat}")

    lat, xtile, ytile = _get_tile_xyz(**latlon, zoom=zoom)
    if oformat == "geojson_io":
        url = f"http://geojson.io/#map={zoom}/{latlon['lat']:.5f}/{latlon['lon']:.5f}"
    else:
        raise NotImplementedError(f"oformat: {oformat}")

    print(f"url: '{url}'")
    if open_url:
        os.system(f"""open '{url}' """)


if __name__ == "__main__":
    latlon_to_xyz()
