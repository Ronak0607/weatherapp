import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weatherapp/Screen/model/WeatherModel.dart';

class HomeProvider extends ChangeNotifier
{
  String apiLink = "https://api.openweathermap.org/data/2.5/weather?lat=21.1702&lon=72.8311&appid=9628b95a2235abb2f18055013ade5de8";

  Future<WeatherModel> apiCalling()
  async {
    var jsonString = await http.get(Uri.parse(apiLink));
    var json = jsonDecode(jsonString.body);

    return WeatherModel.fromJson(json);

  }
}