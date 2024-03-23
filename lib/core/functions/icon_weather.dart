import '../constant/app_image.dart';

iconWeather(String weather) {
  if (weather == "Sunny") {
    return AppImageAsset.clear;
  } else if (weather == "Thundery outbreaks possible") {
    return AppImageAsset.thunderstorm;
  } else if (weather == "Patchy sleet possible" ||
      weather == "Patchy snow possible" ||
      weather == "Mist" ||
      weather == "Fog" ||
      weather == "Freezing fog" ||
      weather == "Blowing snow") {
    return AppImageAsset.snow;
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
    return AppImageAsset.rainy;
  } else if (weather == "Cloudy" ||
      weather == "Partly cloudy" ||
      weather == "Partly Cloudy ") {
    return AppImageAsset.cloudy;
  } else {
    return AppImageAsset.clear;
  }
}
