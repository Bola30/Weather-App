import 'package:flutter/cupertino.dart';

class WeatherModel {
  String? date;
  double? temp;
  double? maxtemp;
  double? mintemp;
  String? condition;

  WeatherModel(
      {required this.date,
      required this.temp,
      required this.maxtemp,
      required this.mintemp,
      required this.condition});

  factory WeatherModel.fromJson(dynamic data) {
    var jsonData = data['forecast']['forecastday'][0]['day'];
    return WeatherModel(
        date: data['location']['localtime'] != null
            ? data['location']['localtime'].split(' ')[1]
            : "Unknown",
        temp: jsonData['avgtemp_c'],
        maxtemp: jsonData['maxtemp_c'],
        mintemp: jsonData['mintemp_c'],
        condition: jsonData['condition']['text']);
  }

  @override
  String getImage() {
    if (condition == "Sunny") {
      return 'assets/images/sunny.png';
    } else if (condition == "Clear") {
      return 'assets/images/clear.webp';
    } else if (condition == "Cloudy") {
      return 'assets/images/cloudy.png';
    } else if (condition == "Partly cloudy") {
      return 'assets/images/Partlycloudy.webp';
    } else if (condition == "Mist") {
      return 'assets/images/Overcast.webp';
    } else if (condition == "Patchy rain possible") {
      return 'assets/images/Patchyrainpossible.webp';
    } else if (condition == "Patchy snow possible") {
      return 'assets/images/Patchysnowpossible.webp';
    } else if (condition == "Blowing snow" ||
        condition == 'Blizzard' ||
        condition == 'Freezing fog') {
      return 'assets/images/Blowingsnow.webp';
    } else {
      return 'assets/images/clear.webp';
    }
  }
}

