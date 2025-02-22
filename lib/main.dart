import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget weatherCard(
      String country, IconData countryIcon, String city, String condition, int temp, IconData weatherIcon) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 85, 28, 185),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    country,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
              Text(
                city,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    condition,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Icon(weatherIcon, color: Colors.white, size: 40),
              Text(
                "$temp°C",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(width: 10), 
              Text(
                "Weather",
                style: TextStyle(fontSize:25),
              ), 
  
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              weatherCard("Current location", Icons.location_on, "Dhaka", "Thunder", 20, Icons.cloud),
              SizedBox(height: 20),
              Text(
                "Around the world",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              weatherCard("United States",Icons.location_on, "California", "Clear", 6, Icons.wb_sunny),
              weatherCard("China", Icons.location_on, "Beijing", "Mostly Sunny", 5, Icons.wb_sunny),
              weatherCard("Russia", Icons.location_on, "Moscow", "Cloudy", -4, Icons.cloud),
            ],
          ),
        ),
      ),
    );
  }
}