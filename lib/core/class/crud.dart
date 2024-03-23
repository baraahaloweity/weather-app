import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:weather_app/core/class/status_requset.dart';

import '../functions/checkinternet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl) async {
    try {
      if (await checkInternet()) {
        var response = await http.get(Uri.parse(linkurl));

        if (response.statusCode == 200 || response.statusCode == 201) {
          print("Response Body: ${response.body}");
          Map responsebody = jsonDecode(response.body);
          print("Decoded Response: $responsebody");
          return Right(responsebody);
        } else {
          return Left(StatusRequest.serverfailure);
        }
      } else {
        return Left(StatusRequest.offlinefailure);
      }
    } catch (_) {
      return Left(StatusRequest.serverfailure);
    }
  }
}
