import 'package:flutter/material.dart';
import 'package:trippers/Screens/Create_trip.dart';
import 'package:trippers/Screens/MyTripsScreen.dart';

import 'Screens/Spash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: MyTripsScreen(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Create_trip(),
                    ));
              },
              child: Icon(
                Icons.add,
              ),
              backgroundColor: Color(0xff3E64FF),
            )));
  }
}
