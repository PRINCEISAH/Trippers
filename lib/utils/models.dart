import 'package:flutter/cupertino.dart';

class TripsClass {
  Color BoxColors;
  final String departure,
      dept_date,
      departuree_time,
      destination,
      destination_date,
      tripType,
      destination_time;

  TripsClass(
      {this.departure,
      this.BoxColors,
      this.tripType,
      this.dept_date,
      this.departuree_time,
      this.destination,
      this.destination_date,
      this.destination_time});
}

Color myHexColor = Color(0xff123456);
var trips_1 = TripsClass(
    BoxColors: Color(0xfff3E64FF),
    departure: "Lagos",
    destination: 'London',
    dept_date: 'Mon , 24 2020',
    destination_date: 'Mon,24 2020',
    departuree_time: "12:24 pm",
    tripType: "Business",
    destination_time: "1:24 pm");

var trip_2 = TripsClass(
    BoxColors: Color(0xfffFFC93E),
    departure: "Berlin",
    destination: 'Hamburg',
    dept_date: 'Mon,23 2020',
    destination_date: 'Mon , 24 2020',
    departuree_time: "12:24 pm",
    tripType: "Vacation",
    destination_time: "1:24 pm");

var trips_3 = TripsClass(
    BoxColors: Color(0xfffFF3E6C),
    departure: "Kenya",
    destination: 'Nigeria',
    dept_date: 'Mon,23 2020',
    destination_date: 'Mon , 24 2020',
    departuree_time: "12:24 pm",
    tripType: "Medical",
    destination_time: "1:24 pm");

var trip_4 = TripsClass(
    BoxColors: Color(0xfff3EBAFF),
    departure: "USA",
    destination: 'China',
    dept_date: 'Mon,23 2020',
    destination_date: 'Mon , 24 2020',
    departuree_time: "12:24 pm",
    tripType: "Education",
    destination_time: "1:24 pm");
