import 'package:flutter/material.dart';
import 'package:bmi_calc/constants.dart';

class CardWrapper extends StatelessWidget {
  final Widget child;
  final Function onTap;
  final Color bgColor;

  CardWrapper({
    @required this.child,
    this.onTap,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(kCardWrapperPadding),
        margin: EdgeInsets.all(kCardWrapperMargin),
        child: child,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(kCardWrapperBorderRadius),
        ),
      ),
    );
  }
}
