import 'package:flutter/material.dart';
import 'package:bmi_calc/widgets/card_wrapper.dart';
import 'package:bmi_calc/constants.dart';

class CardButton extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final String label;
  final Color bgColor;
  final Color labelColor;
  final Color iconColor;

  CardButton({
    this.onTap,
    this.icon,
    this.label,
    this.bgColor,
    this.labelColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: CardWrapper(
          bgColor: bgColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: kCardButtonIconSize,
                  color: iconColor,
                ),
                SizedBox(
                  height: kCardButtonSpacerHeight,
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: labelColor,
                  ),
                )
              ],
            )
        )
    );
  }
}
