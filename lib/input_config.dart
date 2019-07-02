import 'package:flutter/widgets.dart';
import 'package:bmi_calc/constants.dart';

class InputConfig {
  static double height;
  static double width;
  static double age;
  static Gender gender;
  static MeasurementSystem measurementSystem;

  void init(BuildContext context) {
    height = kHeight;
    width = kWeight;
    age = kAge;
    gender = Gender.reset;
    measurementSystem = MeasurementSystem.reset;
  }
}