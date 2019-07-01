import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double iconSize;
  static double cardSliderIconSize;
  static double cardButtonIconSize;
  static double screenPadding;
  static double cardWrapperMargin;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    iconSize = screenHeight / 20;
    cardSliderIconSize = screenHeight / 30;
    cardButtonIconSize = screenHeight / 22;
    screenPadding = screenWidth / 75;
    cardWrapperMargin = screenWidth / 75;
  }
}