import 'package:flutter/material.dart';
class MyUtility {
  BuildContext context;
  MyUtility(this.context) : assert (context != null);
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}

// Use:
// Initialize the following lines in each file inside build
// double dWidth = MyUtility(context).width;
// double dHeight = MyUtility(context).height;