import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/model/weather_model.dart';

import '../core/class/status_requset.dart';

import '../core/data/weather_data.dart';

abstract class SearchController extends GetxController {}

class SearchControllerImp extends SearchController {
  WeatherData weatherData = WeatherData(Get.find());

  TextEditingController? search;
  List<WeatherModel> location = [];

  StatusRequest statusRequest = StatusRequest.none;
  bool isSearch = false;
  getData(String name) async {
    var response = await weatherData.getData(name);
    print(response);
    WeatherModel weatherModel = WeatherModel.fromJson(response);
    location.add(weatherModel);

    print(location[0].location!.name);
    update();
  }

  checkSearch(val) {
    if (val == "") {
      isSearch = false;
    }
    update();
  }

  onSearch(name) {
    isSearch = true;
    getData(name);
    update();
  }

  @override
  void onInit() {
    search = TextEditingController();
    super.onInit();
  }
}
