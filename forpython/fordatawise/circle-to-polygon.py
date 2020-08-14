#!/usr/bin/env python3
import click
import math
import json


# procedures
def _toRadians(angleInDegrees):
  return (angleInDegrees * math.pi) / 180


def _toDegrees(angleInRadians):
  return (angleInRadians * 180) / math.pi


def _offset(c1, distance, bearing):
  lat1 = _toRadians(c1[1])
  lon1 = _toRadians(c1[0])
  # distance divided by 6378137 (radius of the earth) wgs84
  dByR = distance / 6378137
  lat = math.asin(math.sin(lat1) * math.cos(dByR) +
                  math.cos(lat1) * math.sin(dByR) * math.cos(bearing))

  lon = lon1 + math.atan2(math.sin(bearing) * math.sin(dByR) *
                          math.cos(lat1), math.cos(dByR) - math.sin(lat1) * math.sin(lat))
  return [_toDegrees(lon), _toDegrees(lat)]

@click.command()
@click.argument("lat", type=float)
@click.argument("lon", type=float)
@click.argument("radius_meters", type=float)
@click.option("-n","--number_of_vertices", type=int,default=1000)
@click.option("--kepler",is_flag=True)
def circle_to_polygon(lat, lon, radius_meters,number_of_vertices,kepler=False):
    coordinates = []
    n = number_of_vertices
    for i in range(n):
        coordinates.append(_offset([lon,lat], radius_meters, (2 * math.pi * -i) / n));
    coordinates.append(coordinates[0])
    res = {
      "type": "Polygon",
      "coordinates": [coordinates]
    }
    if kepler:
        res = {"type":"Feature","geometry":res}
    print(json.dumps(res))


# main
if __name__ == "__main__":
    circle_to_polygon()
