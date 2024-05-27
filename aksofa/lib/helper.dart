import 'package:flutter/material.dart';

class Helper {
  static bool isMobile(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    if (screenWidth < 800) {
      return true;
    }
    return false;
  }

  static double screenW(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  static double screenH(BuildContext context) {
    return MediaQuery.sizeOf(context).height;
  }
}
