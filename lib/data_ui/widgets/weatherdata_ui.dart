import 'package:flutter/material.dart';

class WeatherDataUI extends StatelessWidget {
  Map weatherData;
  WeatherDataUI({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            height: 100,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Altitude: "
                "${weatherData['Altitude'].toString()}",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            height: 100,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Pressure: "
                "${weatherData['Pressure'].toString()}",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            height: 100,
            width: 110,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Pressure At Sea Level: "
                "${weatherData['Pressure At Sea Level'].toString()}",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            height: 100,
            width: 110,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                "Temperature: "
                "${weatherData['Temp'].toString()}",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
