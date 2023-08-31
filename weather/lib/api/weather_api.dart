import 'dart:convert';

import 'package:weather/models/weather.dart';
import 'package:weather/utilities/constants.dart';
import 'package:http/http.dart' as http;

class WeatherAPI {
  Future<WeatherForecast> getWeatherWithCity({required String city}) async {
    var parameters = {
      'q': city,
      'appid':Constants.WEATHER_ID,
      'units': 'metric',
    };

    var uri = Uri.https(Constants.WEATHER_DOMAIN, Constants.WEATHER_BASIC_PATH, parameters);
    print('request: ${uri.toString()}');

    var response = await http.get(uri);
    print(response.body);

    if (response.statusCode == 200) {
      return WeatherForecast.fromJson(json.decode(response.body));
    } else {
      throw Exception("Error response");
    }
  }
}