import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calc/screens/result_screen.dart';
import 'package:bmi_calc/widgets/card_button.dart';
import 'package:bmi_calc/widgets/submit_button.dart';
import 'package:bmi_calc/widgets/slider_content.dart';
import 'package:bmi_calc/helper/bmi.dart';
import 'package:bmi_calc/constants.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}
class _InputScreenState extends State<InputScreen> {
  Gender gender;
  MeasurementSystem measurementSystem;
  double height = kHeight;
  double weight = kWeight;
  double age = kAge;

  BMI bmi = new BMI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('BMI CALCULATOR')
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.all(kScreenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Row( // Gender Buttons
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: CardButton(
                            icon: FontAwesomeIcons.mars,
                            iconColor: gender == Gender.male ? kCardButtonIconColorActive : kCardButtonIconColorInactive,
                            labelColor: gender == Gender.male ? kCardButtonLabelColorActive : kCardButtonLabelColorInactive,
                            bgColor: gender == Gender.male ? kCardButtonBgColorActive : kCardButtonBgColorInactive,
                            label: 'MALE',
                            onTap: () {
                              setState(() { gender = Gender.male; });
                            },
                          ),
                        ),
                        Expanded(
                          child: CardButton(
                            icon: FontAwesomeIcons.venus,
                            iconColor: gender == Gender.female ? kCardButtonIconColorActive : kCardButtonIconColorInactive,
                            labelColor: gender == Gender.female ? kCardButtonLabelColorActive : kCardButtonLabelColorInactive,
                            bgColor: gender == Gender.female ? kCardButtonBgColorActive : kCardButtonBgColorInactive,
                            label: 'FEMALE',
                            onTap: () {
                              setState(() { gender = Gender.female; });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: CardButton(
                            icon: FontAwesomeIcons.rulerVertical,
                            iconColor: measurementSystem == MeasurementSystem.imperial ? kCardButtonIconColorActive : kCardButtonIconColorInactive,
                            labelColor: measurementSystem == MeasurementSystem.imperial ? kCardButtonLabelColorActive : kCardButtonLabelColorInactive,
                            bgColor: measurementSystem == MeasurementSystem.imperial ? kCardButtonBgColorActive : kCardButtonBgColorInactive,
                            label: 'IMPERIAL',
                            onTap: () {
                              setState(() { measurementSystem = MeasurementSystem.imperial; });
                            },
                          ),
                        ),
                        Expanded(
                          child: CardButton(
                            icon: FontAwesomeIcons.rulerHorizontal,
                            iconColor: measurementSystem == MeasurementSystem.metric ? kCardButtonIconColorActive : kCardButtonIconColorInactive,
                            labelColor: measurementSystem == MeasurementSystem.metric ? kCardButtonLabelColorActive : kCardButtonLabelColorInactive,
                            bgColor: measurementSystem == MeasurementSystem.metric ? kCardButtonBgColorActive : kCardButtonBgColorInactive,
                            label: 'METRIC',
                            onTap: () {
                              setState(() { measurementSystem = MeasurementSystem.metric; });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SliderContent(
                      min: kHeightMin,
                      max: kHeightMax,
                      value: height,
                      label: 'HEIGHT',
                      icon: FontAwesomeIcons.arrowUp,
                      measurement: measurementSystem == MeasurementSystem.metric ? 'cm' : 'in',
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: SliderContent(
                      min: kWeightMin,
                      max: kWeightMax,
                      value: weight,
                      label: 'WEIGHT',
                      icon: FontAwesomeIcons.weight,
                      measurement: measurementSystem == MeasurementSystem.metric ? 'kg' : 'lb',
                      onChanged: (double newValue) {
                        setState(() {
                          weight = newValue;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: SliderContent(
                      min: kAgeMin,
                      max: kAgeMax,
                      value: age,
                      label: 'AGE',
                      icon: FontAwesomeIcons.calendar,
                      measurement: 'yrs',
                      onChanged: (double newValue) {
                        setState(() {
                          age = newValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SubmitButton(
              bgColor: kCalculateButtonColor,
              label: 'CALCULATE',
              onTap: () {
                bool validFields = bmi.validate(
                  gender: gender,
                  measurementSystem: measurementSystem,
                  weight: weight,
                  height: height,
                  age: age.toInt(),
                );
                if (validFields) {
                  double bmiResult = bmi.calculate(
                    gender: gender,
                    measurementSystem: measurementSystem,
                    weight: weight,
                    height: height,
                    age: age.toInt(),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        bmiResult: bmiResult,
//                        age: age,
//                        height: height,
//                        weight: weight,
//                        gender: gender,
//                        measurementSystem: measurementSystem
                      )
                    )
                  );
                }
                else {
                  bmi.alert(context);
                }
              },
            )
          ),
        ],
      ),
    );
  }
}
