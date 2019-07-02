import 'package:flutter/material.dart';
import 'package:bmi_calc/widgets/card_wrapper.dart';
import 'package:bmi_calc/size_config.dart';
import 'package:bmi_calc/constants.dart';

class CardSlider extends StatelessWidget {
  final IconData icon;
  final String label;
  final double min;
  final double max;
  final Function onChanged;
  final String measurement;
  final double value;

  CardSlider({
    this.icon,
    this.label,
    this.min,
    this.max,
    this.value,
    this.measurement,
    this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CardWrapper(
      bgColor: kCardWrapperBgColor,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: SizeConfig.cardSliderIconSize,
                  color: kCardButtonIconColorActive,
                ),
                SizedBox(
                  height: kCardButtonSpacerHeight,
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: kCardButtonLabelColorActive,
                    fontSize: SizeConfig.cardButtonLabelFontSize,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.white,
                thumbColor: Color(0xFFEB1555),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                overlayColor: Color(0x29EB1555),
              ),
              child: Slider(
                value: value,
                min: min,
                max: max,
                inactiveColor: Color(0xFF8D8E98),
                onChanged: onChanged,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  value.toInt().toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.cardSliderValue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5.0),
                Text(
                  measurement,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.cardSliderMeasurementType,
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
