import 'package:flutter/material.dart';
import 'package:trippers/widget/create_widget.dart';

class MyTripsScreen extends StatefulWidget {
  @override
  _MyTripsScreenState createState() => _MyTripsScreenState();
}

class _MyTripsScreenState extends State<MyTripsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 27,
        right: 19,
        top: 24,
      ),
      child: ListView(
        children: <Widget>[Header()],
      ),
    );
  }
}
