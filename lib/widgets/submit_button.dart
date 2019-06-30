import 'package:flutter/material.dart';
import 'package:bmi_calc/constants.dart';

class SubmitButton extends StatelessWidget {
  final String label;
  final Function onTap;
  final Color bgColor;

  SubmitButton({
    this.label,
    this.onTap,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: bgColor,
          margin: EdgeInsets.only(top: kScreenPadding),
          child: Center(
            child: Text(label,
              style: kSubmitButtonCalculateTextStyle,
            ),
          ),
      ),
    );
  }
}
