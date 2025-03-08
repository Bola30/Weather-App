import 'package:flutter/material.dart';
import 'package:weather_app/searchPage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App",
            style: TextStyle(fontSize: 28 ,)),
        backgroundColor: const Color.fromRGBO(176, 220, 255, 1),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Searchpage()),
              );
            },
            icon: Icon(Icons.search , size: 35,),
          ),
        ],
        foregroundColor:  Colors.black
      ),
      body:
       Image.asset('assets/images/pic.png',
          height: 695,
          fit: BoxFit.fill,
        ),
    );
  }
}
