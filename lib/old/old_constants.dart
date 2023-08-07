import 'package:flutter/material.dart';

const kTextColor = Color(0xFF149414);

const kTitleStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

const kSubtitleStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
);

const kTextTheme = TextTheme(
  bodySmall: TextStyle(
    fontSize: 13.0,
    fontFamily: 'Courier',
    color: kTextColor,
  ),
  bodyMedium: TextStyle(
    fontSize: 15.0,
    fontFamily: 'Courier',
    color: kTextColor,
  ),
  bodyLarge: TextStyle(
    fontSize: 18.0,
    fontFamily: 'Courier',
    color: kTextColor,
  ),
);

var kBoxDecoration = BoxDecoration(
  border: Border.all(color: kTextColor, width: 2.0),
);
