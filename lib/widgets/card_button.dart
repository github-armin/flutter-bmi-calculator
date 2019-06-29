import 'package:flutter/material.dart';
import 'package:bmi_calc/widgets/card_wrapper.dart';
import 'package:bmi_calc/constants.dart';

class CardButton extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final String label;
  final Color bgColor;

  CardButton({
    this.onTap,
    this.icon,
    this.label,
    this.bgColor,
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
                  color: kCardButtonIconColor,
                ),
                SizedBox(
                  height: kCardButtonSpacerHeight,
                ),
                Text(label, style: kCardButtonLabelStyle,)
              ],
            )
        )
    );
  }
}
