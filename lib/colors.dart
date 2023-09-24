import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFFFEDF5),
  100: Color(0xFFFFD2E6),
  200: Color(0xFFFFB4D6),
  300: Color(0xFFFF96C6),
  400: Color(0xFFFF80B9),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFFFF61A6),
  700: Color(0xFFFF569C),
  800: Color(0xFFFF4C93),
  900: Color(0xFFFF3B83),
});
const int _primaryPrimaryValue = 0xFFFF69AD;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFFFE4ED),
  700: Color(0xFFFFCADD),
});
const int _primaryAccentValue = 0xFFFFFFFF;
