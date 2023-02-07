#!/bin/bash

# download weather for location, parse out details
# api docs: https://www.weather.gov/documentation/services-web-api
# SLC Airport: 40.771583, -111.979543
# https://api.weather.gov/points/40.7716,-111.9795
# https://www.devtoolsdaily.com/jq_playground/

echo "Weather forecast for Salt Lake City Airport:"
curl -s https://api.weather.gov/gridpoints/SLC/96,175/forecast | jq '.properties.periods[0] | ((.temperature|tostring) + .temperatureUnit + ", " + .shortForecast)'
