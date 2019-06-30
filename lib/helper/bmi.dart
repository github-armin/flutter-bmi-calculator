import 'package:flutter/material.dart';
import 'package:bmi_calc/constants.dart';
import 'dart:math';

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
    if (measurementSystem == MeasurementSystem.metric) {
      return weight / pow(height / 100, 2);
    }
    if (measurementSystem == MeasurementSystem.imperial) {
      return weight * 703 / pow(height, 2);
    }
  }

  Future<void> alert(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: const Text('Please fill out all the required fields'),
          actions: <Widget>[
            FlatButton(
              child: Text('RETRY'),
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