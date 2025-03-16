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
        date: data['location']['localtime'],
        temp: jsonData['avgtemp_c'],
        maxtemp: jsonData['maxtemp_c'],
        mintemp: jsonData['mintemp_c'],
        condition: jsonData['condition']['text']);
  }

  @override
  String toString() {
    return 'temp = $temp mintemp = $mintemp maxtemp = $maxtemp date= $date';
  }
}


