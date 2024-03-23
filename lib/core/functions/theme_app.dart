import 'package:flutter/material.dart';

Color themeApp(String weather) {
  if (weather == "Sunny") {
    return Colors.orange;
  } else if (weather == "Thundery outbreaks possible") {
    return Colors.blue;
  } else if (weather == "Patchy sleet possible" ||
      weather == "Patchy snow possible" ||
      weather == "Mist" ||
      weather == "Fog" ||
      weather == "Freezing fog" ||
      weather == "Blowing snow") {
    return Colors.blueAccent;
  } else if (weather == "Patchy rain possible" ||
      weather == "Overcast" ||
      weather == "Showers" ||
      weather == "Light rain" ||
      weather == "Moderate rain at times" ||
      weather == "Moderate rain" ||
      weather == "Heavy rain at times" ||
      weather == "Heavy rain" ||
      weather == "Light freezing rain" ||
      weather == "Moderate or heavy freezing rain" ||
      weather == "Patchy rain nearby") {
    return Colors.lightBlue;
  } else if (weather == "Cloudy" ||
      weather == "Partly cloudy" ||
      weather == "Partly Cloudy ") {
    return Colors.blueGrey;
  } else {
    return Colors.orange;
  }
}
