import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit.dart';
import 'package:weather_app/models/weather-model.dart';
import 'package:weather_app/searchPage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is WeatherSuccess) {
            return SuccessState();
          } else if (state is WeatherFailure) {
            return Center(child: Text("Error"));
          } else {
            return DefaultState();
          }
        },
      ),
    );
  }
}

class DefaultState extends StatelessWidget {
  const DefaultState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/home.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 40,
          right: 0,
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.2),
            radius: 30,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Searchpage()),
                );
              },
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SuccessState extends StatelessWidget {
  const SuccessState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/sucss.png",
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 4),
              Text(
                "Cairo",
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.white.withOpacity(0.4),
                    shadows: [
                      Shadow(
                        blurRadius: 4.0,
                        offset: Offset(1, 1),
                      )
                    ]),
              ),
              Text(
                "Update: 12:11 PM",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.white.withOpacity(0.2),
                    shadows: [
                      Shadow(
                        blurRadius: 4.0,
                        offset: Offset(0.5, 0),
                      )
                    ]),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/clear.png",
                    height: 120,
                    width: 100,
                  ),
                  Text(
                    "22",
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.black,
                        backgroundColor: Colors.white.withOpacity(0.1),
                        shadows: [
                          Shadow(
                            blurRadius: 4.0,
                            offset: Offset(1, 0),
                          )
                        ]),
                  ),
                  Column(
                    children: [
                      Text("maxTemp: 28" , style: TextStyle( fontSize: 18, backgroundColor: Colors.white.withOpacity(0.3),fontWeight: FontWeight.bold, 
                  shadows: [Shadow(
                    blurRadius: 4.0,
                            offset: Offset(.05, 0),
                  )]),),
                      Text("minTemp: 16" , style: TextStyle( fontSize: 18, backgroundColor: Colors.white.withOpacity(0.3),fontWeight: FontWeight.bold, 
                  shadows: [Shadow(
                    blurRadius: 4.0,
                            offset: Offset(.05, 0),
                  )]),),
                    ],
                  ),
                ],
              ),
              Spacer(),
               Text(
                "Clear",
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.white.withOpacity(0.1),
                    shadows: [
                      Shadow(
                        blurRadius: 4.0,
                        offset: Offset(1, 1),
                      )
                    ]),
              ),
              Spacer(flex: 5),
            ],
          ),
        ),
      ],
    );
  }
}
