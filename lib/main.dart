import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/routes.dart';

import 'binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes,
      initialBinding: MyBinding(),
    );
  }
}
