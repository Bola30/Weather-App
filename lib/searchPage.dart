import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Search a City",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.brown[500],
          foregroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Stack(children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/search.png',
              fit: BoxFit.cover, // يجعل الصورة تغطي الخلفية
            ),
          ),
          Center(
             child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onSubmitted: (data) {
                  cityName = data;
                },
                decoration: InputDecoration(
                  filled: true, // يجعل الخلفية بيضاء حتى تكون واضحة
                  fillColor: Colors.white.withOpacity(0.8),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 28),
                  labelText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  suffixIcon: Icon(Icons.search),
                  hintText: "Enter a City",
                ),))
          )
        ]));
    /*        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: TextField(
            onSubmitted: (data){
              cityName = data;
            },
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                label: Text("search"),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
                hintText: "Enter a City "),
          ),
        ),
      ),
    ); */
  }
}
