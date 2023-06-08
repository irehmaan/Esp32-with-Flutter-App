import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:weatther_station/data_ui/widgets/weatherdata_ui.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final user = FirebaseAuth.instance.currentUser;
  Query databaseRef = FirebaseDatabase.instance.ref().child('WeatherData');

  void exitApp() {
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey.shade300,
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.grey.shade200,
              title: const Text(
                "Weather Station",
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                IconButton(
                    onPressed: exitApp,
                    icon: const Icon(
                      Icons.logout_sharp,
                      color: Colors.black,
                    ))
              ],
            ),
            body: Column(
              children: [
                // Text("Signed in as: " "${user?.email}"),
                SizedBox(
                  height: 300,
                  child: FirebaseAnimatedList(
                      query: databaseRef,
                      itemBuilder: (BuildContext context, DataSnapshot snapshot,
                          Animation<double> animation, int index) {
                        Map weatherData = snapshot.value as Map;
                        weatherData['key'] = snapshot.key;
                        return WeatherDataUI(weatherData: weatherData);
                      }),
                ),
              ],
            )));
  }
}
