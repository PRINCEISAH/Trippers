import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Create_trip extends StatefulWidget {
  @override
  _Create_tripState createState() => _Create_tripState();
}

class _Create_tripState extends State<Create_trip> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 28, top: 23, right: 28),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image(
                        image: AssetImage('images/back.png'),
                      ),
                    ),
                    SizedBox(
                      width: 29,
                    ),
                    Text(
                      'Create a trip',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: "Nunito"),
                    )
                  ],
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Departure",
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 132,
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Enter Date'),
                      ),
                    ),
                    Container(
                      width: 132,
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Enter Time'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Destination",
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 132,
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Enter Date'),
                      ),
                    ),
                    Container(
                      width: 132,
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Enter Time'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Trip type",
                    suffixIcon: GestureDetector(
                      onTap: () => _showDialog(context),
                      child: Image(
                        image: AssetImage('images/vector.png'),
                        height: 18,
                        width: 18,
                        color: Color(0xffE5E5E5),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 320,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xfff3E64FF),
                  ),
                  child: Center(
                    child: Text(
                      "Add Trip",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_showDialog(context) {
  // flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return alert dialog object
      return AlertDialog(
          content: Container(
        height: 155.0,
        width: 314,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Text(
                  'Business',
                  style: GoogleFonts.nunito(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Education',
                  style: GoogleFonts.nunito(
                      fontSize: 18, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Divider(thickness: 1),
            Row(
              children: <Widget>[
                Text('Health',
                    style: GoogleFonts.nunito(
                        fontSize: 18, fontWeight: FontWeight.w600)),
              ],
            ),
            Divider(thickness: 1),
            Row(
              children: <Widget>[
                Text("Vacation",
                    style: GoogleFonts.nunito(
                        fontSize: 18, fontWeight: FontWeight.w600))
              ],
            )
          ],
        ),
      ));
    },
  );
}
