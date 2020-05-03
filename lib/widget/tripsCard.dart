import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trippers/utils/models.dart';
import 'package:trippers/utils/textstyle.dart';

class TripsCardwidget extends StatefulWidget {
  @override
  _TripsCardwidgetState createState() => _TripsCardwidgetState();
}

class _TripsCardwidgetState extends State<TripsCardwidget> {
  final TripsClass trip1 = trips_1;
  final TripsClass trip2 = trip_2;
  final TripsClass trip3 = trips_3;
  final TripsClass trip4 = trip_4;
  final planeiconUrl = "images/plane.png";
  final menuUrl = "images/menu.png";

  Widget Buildcardwidget(
    Color color,
    String destination,
    departure,
    departureDate,
    destinationDate,
    departureTime,
    destinationTime,
    trip_type,
  ) {
    return Container(
        width: 393,
        height: 120,
        child: Card(
          child: Padding(
            padding: EdgeInsets.only(left: 21, top: 12, right: 20),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        departure,
                        style: Styles_color.firstRow,
                      ),
                      Align(
                        child: Image(image: AssetImage(planeiconUrl)),
                      ),
                      Text(
                        destination,
                        style: Styles_color.firstRow,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 9),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      departureDate,
                      style: Styles_color.style2,
                    ),
                    Text(
                      destinationDate,
                      style: Styles_color.style2,
                    )
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      departureTime,
                      style: Styles_color.style2,
                    ),
                    Text(
                      destinationTime,
                      style: Styles_color.style2,
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 57,
                      height: 17,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2), color: color),
                      child: Center(
                        child: Text(
                          trip_type,
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      ),
                    ),
                    _childPopup()
                  ],
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      child: ListView(
        children: <Widget>[
          Buildcardwidget(
              trip1.BoxColors,
              trip1.destination,
              trip1.departure,
              trip1.dept_date,
              trip1.destination_date,
              trip1.departuree_time,
              trip1.destination_time,
              trip1.tripType),
          SizedBox(height: 12),
          Buildcardwidget(
              trip2.BoxColors,
              trip2.destination,
              trip2.departure,
              trip2.dept_date,
              trip2.destination_date,
              trip2.departuree_time,
              trip2.destination_time,
              trip2.tripType),
          SizedBox(height: 12),
          Buildcardwidget(
              trip3.BoxColors,
              trip3.destination,
              trip3.departure,
              trip3.dept_date,
              trip3.destination_date,
              trip3.departuree_time,
              trip3.destination_time,
              trip3.tripType),
          SizedBox(height: 12),
          Buildcardwidget(
              trip4.BoxColors,
              trip4.destination,
              trip4.departure,
              trip4.dept_date,
              trip4.destination_date,
              trip4.departuree_time,
              trip4.destination_time,
              trip4.tripType),
          SizedBox(height: 12),
          Buildcardwidget(
              trip4.BoxColors,
              trip4.destination,
              trip4.departure,
              trip4.dept_date,
              trip4.destination_date,
              trip4.departuree_time,
              trip4.destination_time,
              trip4.tripType),
          Text(
            "createss",
          )
        ],
      ),
    );
  }
}

Widget _childPopup() => PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text(
            "Delete",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Update",
              style: GoogleFonts.nunito(fontWeight: FontWeight.w800)),
        ),
      ],
      child: Image(image: AssetImage('images/menu.png')),
    );
