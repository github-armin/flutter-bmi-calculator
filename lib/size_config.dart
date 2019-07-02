import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double cardSliderIconSize;
  static double cardButtonIconSize;
  static double screenPadding;
  static double cardWrapperMargin;
  static double bmiResultFontSize;
  static double bmiAdviceFontSize;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    cardSliderIconSize = screenHeight / 30;
    cardButtonIconSize = screenHeight / 22;
    screenPadding = screenWidth / 75;
    cardWrapperMargin = screenWidth / 75;
    bmiResultFontSize = screenWidth / 4.67;
    bmiAdviceFontSize = screenWidth / 20;
  }
}