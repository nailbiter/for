#!/usr/bin/env python3

function _toRadians(angleInDegrees) {
  return (angleInDegrees * Math.PI) / 180;
}
function _toDegrees(angleInRadians) {
  return (angleInRadians * 180) / Math.PI;
}
function _offset(c1, distance, bearing) {
  var lat1 = _toRadians(c1[1]);
  var lon1 = _toRadians(c1[0]);
  var dByR = distance / 6378137; // distance divided by 6378137 (radius of the earth) wgs84
  var lat = Math.asin(
    Math.sin(lat1) * Math.cos(dByR) + Math.cos(lat1) * Math.sin(dByR) * Math.cos(bearing)
  );
  var lon =
    lon1 +
    Math.atan2(
      Math.sin(bearing) * Math.sin(dByR) * Math.cos(lat1),
      Math.cos(dByR) - Math.sin(lat1) * Math.sin(lat)
    );
  return [_toDegrees(lon), _toDegrees(lat)];
}
/**
 * @param center [lon,lat] in degrees
 * @param radius radius in meters
 * @param n number of edges
 * @return geo-json
 */
function circleToPolygon(center, radius, n) {
  var coordinates = [];
  for (var i = 0; i < n; ++i) {
    coordinates.push(_offset(center, radius, (2 * Math.PI * -i) / n));
  }
  coordinates.push(coordinates[0]);
  return {
    type: "Polygon",
    coordinates: [coordinates]
  };
}
