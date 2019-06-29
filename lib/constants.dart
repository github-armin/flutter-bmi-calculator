import 'package:flutter/material.dart';

const double kCardWrapperPadding = 10.0;
const double kCardWrapperMargin = 10.0;
const double kCardWrapperBorderRadius = 10.0;
const Color kCardWrapperBgColor = Color(0xFF1D1E33);

const double kScreenPadding = kCardWrapperMargin / 2;

const Color kSubmitButtonColor = Color(0xFFEB1555);

const double kCardButtonIconSize = 40.0;
const Color kCardButtonIconColorActive = Colors.white;
const Color kCardButtonIconColorInactive = Color(0xFF8D8E98);
const Color kCardButtonLabelColorActive = Colors.white;
const Color kCardButtonLabelColorInactive = Color(0xFF8D8E98);
const Color kCardButtonBgColorActive = kCardWrapperBgColor;
const Color kCardButtonBgColorInactive = Color(0xFF111328);
const double kCardButtonSpacerHeight = 10.0;

enum Gender{ male, female }
enum MeasurementSystem{ imperial, metric }

const TextStyle kSliderContentValueTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);
const TextStyle kSliderContentMeasurementTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
);

const double kSliderIconSize = 25.0;

const double kHeight = 50.0;
const double kHeightMin = 0.0;
const double kHeightMax = 225.0;

const double kWeight = 135.0;
const double kWeightMin = 5.0;
const double kWeightMax = 400.0;

const double kDefaultAge = 21.0;