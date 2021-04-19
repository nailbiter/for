#!/usr/bin/env python3
"""===============================================================================

        FILE: fordatawise/non-reusable/google-map-link-to-geojson-app-link.py

       USAGE: ./fordatawise/non-reusable/google-map-link-to-geojson-app-link.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-04-19T19:00:55.889781
    REVISION: ---

==============================================================================="""

import click
import sys
import re
import webbrowser
import math

# code below is copied from https://stackoverflow.com/a/23058284
# function getTileURL(lat, lon, zoom) {
#    var xtile = parseInt(Math.floor( (lon + 180) / 360 * (1<<zoom) ));
#    var ytile = parseInt(Math.floor( (1 - Math.log(Math.tan(lat.toRad()) + 1 / Math.cos(lat.toRad())) / Math.PI) / 2 * (1<<zoom) ));
#    return "" + zoom + "/" + xtile + "/" + ytile;
# }


def _get_tile_url(lat, lon, zoom):
    xtile = int(math.floor((lon + 180) / 360 * (1 << zoom)))
    ytile = int(math.floor((1 - math.log(math.tan(math.radians(lat)) +
                                         1 / math.cos(math.radians(lat))) / math.pi) / 2 * (1 << zoom)))
    return zoom, xtile, ytile


@click.command()
@click.option("-i", "--input-link")
@click.option("--output-zoom", type=int, default=17)
def google_map_link_to_geojson_app_link(input_link, output_zoom):
    if input_link is None:
        input_link = sys.stdin.read()
#    click.echo(f"input_link: {input_link}")
    # https://www.google.com/maps/place/%E3%80%92194-0022+%E6%9D%B1%E4%BA%AC%E9%83%BD%E7%94%BA%E7%94%B0%E5%B8%82%E6%A3%AE%E9%87%8E%EF%BC%95%E4%B8%81%E7%9B%AE+%E6%A3%AE%E9%87%8E%E6%A9%8B/@35.5469321,139.433621,17z/data=!3m1!4b1!4m5!3m4!1s0x6018fea591868acf:0x16e70528f8cc8f4f!8m2!3d35.5469278!4d139.4358097
    m = re.match(
        r"https://www.google.com/maps/place/.*@(?P<lat>\d+\.\d+),(?P<lon>\d+\.\d+),(?P<zoom>\d+)z/data=.*", input_link)
    assert m is not None
    # https://geojson.io/#map=18/35.47948/-220.54882
#    zoom,lat,lon = _get_tile_url(*[float(m.group(k)) for k in "lat lon".split(" ")], output_zoom)
    zoom,lat,lon = [float(m.group(k)) for k in "zoom lat lon".split(" ")]
    zoom = output_zoom
    url = f"https://geojson.io/#map={zoom}/{lat}/{lon}"
    click.echo(url)
    webbrowser.open(url)


if __name__ == "__main__":
    google_map_link_to_geojson_app_link()
