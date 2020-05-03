import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trippers/widget/tripsCard.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Hello, Isah",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
              Container(
                height: 39,
                width: 97,
                decoration: BoxDecoration(
                  color: Color(0xff3E64FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "20 trips",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: 'Nunito'),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Create your \ntrips with us",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w800, fontSize: 34),
          ),
          SizedBox(height: 37),
          TripsCardwidget()
        ],
      ),
    );
  }
}
