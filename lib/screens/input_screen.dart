import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calc/widgets/card_wrapper.dart';
import 'package:bmi_calc/widgets/card_button.dart';
import 'package:bmi_calc/constants.dart';

class InputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator')
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
                    flex: 1,
                    child: Row( // Gender Buttons
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: CardButton(
                            icon: FontAwesomeIcons.mars,
                            bgColor: kCardWrapperBgColor,
                            label: 'MALE',
                          ),
                        ),
                        Expanded(
                          child: CardButton(
                            icon: FontAwesomeIcons.venus,
                            bgColor: kCardWrapperBgColor,
                            label: 'FEMALE',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: CardWrapper(
//                    child: Column(),
                            bgColor: kCardWrapperBgColor,
                          ),
                        ),
                        Expanded(
                          child: CardWrapper(
//                    child: Container(),
                            bgColor: kCardWrapperBgColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: CardWrapper(
                      bgColor: kCardWrapperBgColor,
                      child: Row(
                        children: <Widget>[
//                          vertical slider 1
//                          vertical slider 2
//                          vertical slider 3
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: kSubmitButtonColor,
              margin: EdgeInsets.only(top: kScreenPadding),
              child: Text('placeholder for a button')
            ),
          ),
        ],
      ),
    );
  }
}
