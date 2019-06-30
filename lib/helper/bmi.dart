import 'package:flutter/material.dart';
import 'package:bmi_calc/constants.dart';

class BMI {
  bool validate({
    Gender gender,
    MeasurementSystem measurementSystem,
    double height,
    double weight,
    int age,
  }) {
    if (gender != Gender.male && gender != Gender.female) {
      return false;
    }
    if (measurementSystem != MeasurementSystem.imperial && measurementSystem != MeasurementSystem.metric) {
      return false;
    }
    return true;
  }

  double calculate({
    Gender gender,
    MeasurementSystem measurementSystem,
    double height,
    double weight,
    int age,
  }) {
    return 0.0;
  }

  Future<void> alert(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Not in stock'),
          content: const Text('This item is no longer available'),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}