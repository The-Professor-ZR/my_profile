


import 'package:flutter/cupertino.dart';

class ScreenSize {
  BuildContext context;
  ScreenSize({required this.context});
  double screenWidth(){
    return MediaQuery.of(context).size.width;
  }
  double screenHeight(){
    return MediaQuery.of(context).size.height;
  }
  double widthP(double n){
    return MediaQuery.of(context).size.width*(n/100);
  }
  double heightP(double n){
    return MediaQuery.of(context).size.height*(n/100);

  }
  double fontSize(double n){
  return screenHeight() * (n/100);
  }
  double sSizePntg(double n){
    return screenWidth() * (n/100);
  }
}