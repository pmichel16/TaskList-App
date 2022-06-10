import 'package:flutter/material.dart';

const Color primaryTextColor = Color(0xfff9f7fd);
const Color textColor = Colors.black;

final ThemeData theme = ThemeData(
    backgroundColor: const Color(0xfff9f7fd),
    primaryColor: const Color(0xffc5afe6),
    iconTheme: const IconThemeData(color: textColor, size: 35),
    primaryTextTheme: const TextTheme(
        headline4: TextStyle(color: primaryTextColor, fontFamily: "heebo"),
        subtitle1: TextStyle(color: primaryTextColor, fontFamily: "heebo")),
    textTheme: const TextTheme(
        headline4: TextStyle(color: textColor, fontFamily: "heebo"),
        subtitle1: TextStyle(color: textColor, fontFamily: "heebo")));
