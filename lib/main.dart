import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit.dart';
import 'package:weather_app/homePage.dart';
import 'package:weather_app/service/Weather_service.dart';

void main() {
  debugProfileBuildsEnabled = true;
  runApp(BlocProvider(create: (context){
    return WeatherCubit(WeatherService());
  }, child:  WeatherApp()));
  
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
  