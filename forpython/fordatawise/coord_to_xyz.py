#!/usr/bin/env python3
"""===============================================================================

        FILE: fordatawise/coord_to_xyz.py

       USAGE: ./fordatawise/coord_to_xyz.py

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
@click.argument("latlon")
@click.option("-z", "--zoom", type=int, default=12)
@click.option("-i", "--iformat", type=click.Choice(["comma"]), default="comma")
@click.option("-o", "--oformat", type=click.Choice(["geojson_io"]), default="geojson_io")
def coord_to_xyz(latlon, zoom, iformat, oformat):
    if iformat == "comma":
        latlon = {k: v for k, v in zip(
            "lat lon".split(" "), map(float, latlon.split(",")))}
    else:
        raise NotImplementedError(f"iformat: {iformat}")

    lat, xtile, ytile = _get_tile_xyz(**latlon, zoom=zoom)
    if oformat == "geojson_io":
        url = f"http://geojson.io/#map={zoom}/{latlon['lat']}/{latlon['lon']}"
    else:
        raise NotImplementedError(f"oformat: {oformat}")

    print(f"url: '{url}'")
    os.system(f"""open '{url}' """)


if __name__ == "__main__":
    coord_to_xyz()
