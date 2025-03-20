
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit.dart';
import 'package:weather_app/homePage.dart';

class Searchpage extends StatelessWidget {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/search.png',
            fit: BoxFit.cover,
          ),
        ),
         Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              onChanged: (data) {
                cityName = data;
              },
              onSubmitted: (data) async {
                cityName = data;
                BlocProvider.of<WeatherCubit>(context)
                    .getFromWeatherService(cityName: cityName!);
                    BlocProvider.of<WeatherCubit>(context).cityName =cityName;
                    Navigator.pop(context);
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                labelText: "Search",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                suffixIcon: Icon(Icons.search),
                hintText: "Enter a City",
              ),
            ),
          ),
        ),

        Positioned(
          top: 20,
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.2),
            radius: 30,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              icon: Icon(Icons.arrow_back, size: 30, color: Colors.white),
            ),
          ),
        ),
      ],
    ));
  }
}

