class AppLinkApi {
  // static const String server =
  //     "http://api.weatherapi.com/v1/forecast.json?key=753a73f8a6b342b5893143338240103&q=London&days=1&aqi=no&alerts=no";
  String cityName;

  AppLinkApi(this.cityName);

  static const String _apiKey = "753a73f8a6b342b5893143338240103";

  String get server =>
      "http://api.weatherapi.com/v1/forecast.json?key=$_apiKey&q=$cityName&days=1&";
}
