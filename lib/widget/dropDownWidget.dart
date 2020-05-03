import 'package:flutter/material.dart';

Widget _childPopup() => PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text(
            "Earth",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Text(
            "Moon",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: Text(
            "Sun",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ],
      child: Container(
        height: 50,
        width: 200,
        decoration: ShapeDecoration(
          color: Colors.black,
          shape: StadiumBorder(
            side: BorderSide(width: 2),
          ),
        ),
        child: Icon(Icons.airplanemode_active),
      ),
    );
