import 'package:flutter/material.dart';
import 'package:weather_app/homePage.dart';

void main() {
  debugProfileBuildsEnabled = true;
  runApp(const WeatherApp());
  
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
