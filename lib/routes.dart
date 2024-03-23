import 'package:get/get.dart';

import 'package:weather_app/view/screen/weather_home.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => WeatherHome()),
];
