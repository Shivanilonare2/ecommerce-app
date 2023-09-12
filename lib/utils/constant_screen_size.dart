import 'package:flutter/material.dart';
class AppConstants{
  static width(double a,BuildContext context)
  {
    return MediaQuery.of(context).size.width*(a/100);
  }
  static height(double b,BuildContext context)
  {
    return MediaQuery.of(context).size.height*(b/100);
  }
}