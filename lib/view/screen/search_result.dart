import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  const SearchResult(
      {super.key,
      required this.name,
      required this.date,
      required this.temperature,
      required this.maxtemperature,
      required this.mintemperature,
      required this.weather,
      required this.iconImage,
      required this.backgroungcolor});
  final String name;
  final String date;
  final String temperature;
  final String maxtemperature;
  final String mintemperature;
  final String weather;
  final String iconImage;
  final Color backgroungcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 780,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [backgroungcolor, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(
        children: [
          const SizedBox(
            height: 180,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "Updating:$date",
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(iconImage),
              Text(
                temperature,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              Column(
                children: [
                  Text(
                    "max:$maxtemperature",
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    "min:$mintemperature",
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            weather,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
