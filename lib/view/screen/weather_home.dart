import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/search_controller.dart';
import 'package:weather_app/core/functions/icon_weather.dart';
import 'package:weather_app/core/functions/theme_app.dart';

import 'package:weather_app/view/screen/search_result.dart';

// ignore: must_be_immutable
class WeatherHome extends StatelessWidget {
  String? name;

  WeatherHome({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SearchControllerImp());

    return Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<SearchControllerImp>(
          builder: (controllerImp) => Column(children: [
            !controllerImp.isSearch
                ? Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 120, left: 10, right: 10),
                        child: const Text(
                          textAlign: TextAlign.center,
                          "Hello, in order to know today’s weather, please enter the name of the city",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 10, right: 10),
                          child: TextFormField(
                            controller: controllerImp.search,
                            onFieldSubmitted: (Value) {
                              name = Value;
                              controllerImp.getData(name!);
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20)),
                                filled: true,
                                fillColor: Colors.grey[200],
                                prefixIcon: IconButton(
                                  icon: const Icon(Icons.search),
                                  onPressed: () {
                                    controllerImp.onSearch(name);
                                    // controllerImp.goToResult();
                                  },
                                ),
                                hintText: "anter city name",
                                hintStyle: const TextStyle(fontSize: 18)),
                          )),
                    ],
                  )
                : SearchResult(
                    name: controllerImp.location[0].location!.name!,
                    date: controllerImp.location[0].location!.localtime!,
                    temperature: controllerImp
                        .location[0].forecast!.forecastday![0].day!.avgtempC!
                        .toString(),
                    maxtemperature: controllerImp
                        .location[0].forecast!.forecastday![0].day!.maxtempC!
                        .toString(),
                    mintemperature: controllerImp
                        .location[0].forecast!.forecastday![0].day!.mintempC!
                        .toString(),
                    weather: controllerImp.location[0].forecast!.forecastday![0]
                        .day!.condition!.text!,
                    iconImage: iconWeather(controllerImp.location[0].forecast!
                        .forecastday![0].day!.condition!.text!),
                    backgroungcolor: themeApp(controllerImp.location[0]
                        .forecast!.forecastday![0].day!.condition!.text!),
                  )
          ]),
        ));
  }
}
