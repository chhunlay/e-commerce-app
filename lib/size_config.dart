import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static double screenWidth = 0.0; // Initializing to default value of 0.0
  static double screenHeight = 0.0; // Initializing to default value of 0.0
  static late double defaultSize;
  static Orientation orientation =
      Orientation.portrait; // Initializing to default orientation of portrait

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}


// [1]
// class SizeConfig {
//   //all variable in dart are non-nullable
//   //-we use keywords 'late/?'
//   static late MediaQueryData _mediaQueryData;
//   static late double screenWidth;
//   static late double screenHeight;
//   static late double defaultSize;
//   static late Orientation orentation;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData.size.width;
//     screenHeight = _mediaQueryData.size.height;
//     orentation = _mediaQueryData.orientation;
//   }

// [2]
//>>null variavle<< using '?' in void should have '!'
// static MediaQueryData? _mediaQueryData;
// static double? screenWidth;
// static double? screenHeight;
// static double? defaultSize;
// static Orientation? orentation;

// void init(BuildContext context) {
//   _mediaQueryData = MediaQuery.of(context);
//   screenWidth = _mediaQueryData!.size.width;
//   screenHeight = _mediaQueryData!.size.height;
//   orentation = _mediaQueryData!.orientation;
// }



