import 'package:flutter/material.dart';
import 'package:bmi_calc/widgets/submit_button.dart';
import 'package:bmi_calc/widgets/card_wrapper.dart';
import 'package:bmi_calc/constants.dart';

class ResultScreen extends StatelessWidget {
  final double bmiResult;

  ResultScreen({this.bmiResult});

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
              child: CardWrapper(
                bgColor: kCardWrapperBgColor,
                child: Text(bmiResult.toStringAsFixed(1)),
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


//Text(bmiResult.toStringAsFixed(1))