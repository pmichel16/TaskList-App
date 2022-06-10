import 'package:flutter/material.dart';

const Color textColor = Color(0xfff9f7fd);

final ThemeData theme = ThemeData(
    backgroundColor: const Color(0xfff9f7fd),
    primaryColor: const Color(0xffc5afe6),
    iconTheme: const IconThemeData(color: textColor, size: 35),
    textTheme: const TextTheme(
        headline4: TextStyle(color: textColor, fontFamily: "heebo"),
        subtitle1: TextStyle(color: textColor, fontFamily: "heebo")));
