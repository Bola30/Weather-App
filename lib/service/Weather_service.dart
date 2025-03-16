import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather-model.dart';

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'ec954c527c484e7cac805236252702';
  Future<WeatherModel> getWeather({required String cityName}) async {
    Uri url =
        Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
    http.Response resresponse = await http.get(url);
    if (resresponse.statusCode == 400) {
      var data = jsonDecode(resresponse.body);
      throw Exception(data['erorr']['messge']);
    }
    Map<String, dynamic> data = jsonDecode(resresponse.body);

    WeatherModel weather = WeatherModel.fromJson(data);
    return weather;
  }
}
