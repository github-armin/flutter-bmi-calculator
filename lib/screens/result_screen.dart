import 'package:flutter/material.dart';
import 'package:bmi_calc/widgets/submit_button.dart';
import 'package:bmi_calc/widgets/card_wrapper.dart';
import 'package:bmi_calc/constants.dart';

class ResultScreen extends StatelessWidget {
  final double bmiResult;

  ResultScreen({this.bmiResult});

  String bmiStatus(bmiResult) {
    if (bmiResult < 18.5) {
      return 'Underweight';
    }
    else if (bmiResult >= 18.5 && bmiResult < 25) {
      return 'Normal';
    }
    else if (bmiResult >= 25 && bmiResult < 30) {
      return 'Overweight';
    }
    else if (bmiResult >= 30) {
      return 'Obese';
    }
    return '';
  }

  String bmiAdvice(bmiResult) {
    if (bmiResult < 18.5) {
      return 'Try eating more.';
    }
    else if (bmiResult >= 18.5 && bmiResult < 25) {
      return 'Good job! Keep up the good work!';
    }
    else if (bmiResult >= 25 && bmiResult < 30) {
      return 'Try exercising more.';
    }
    else if (bmiResult >= 30) {
      return 'Try sticking to a healthy diet and exercise more.';
    }
    return '';
  }

  Color bmiColor(bmiResult) {
    if (bmiResult < 18.5) {
      return Colors.yellow.shade300;
    }
    else if (bmiResult >= 18.5 && bmiResult < 25) {
      return Colors.green;
    }
    else if (bmiResult >= 25 && bmiResult < 30) {
      return Colors.orange;
    }
    else if (bmiResult >= 30) {
      return Colors.red;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.all(kScreenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment(0, 0),
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text('Your BMI Results', style: kBMIResultScreenTitleTextStyle),
                  ),
                  Expanded(
                    child: Container(
                      child: CardWrapper(
                        bgColor: kCardWrapperBgColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(bmiStatus(bmiResult), style: TextStyle(
                              fontSize: 20.0,
                              color: bmiColor(bmiResult),
                              fontWeight: FontWeight.bold,
                            ),),
                            Text(bmiResult.toStringAsFixed(1), style: kBMIResultScreenBMITextStyle),
                            Text(bmiAdvice(bmiResult),
                              style: kBMIResultScreenAdviceTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SubmitButton(
              bgColor: kResetButtonColor,
              label: 'RESET',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      )
    );
  }
}
