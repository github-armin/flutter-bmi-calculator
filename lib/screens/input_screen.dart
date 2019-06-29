import 'package:flutter/material.dart';
import 'package:bmi_calc/widgets/card_wrapper.dart';
import 'package:bmi_calc/constants.dart';

class InputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is my app')
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(kScreenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
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
//                    child: Column(),
                        bgColor: kCardWrapperBgColor,
                      ),
                    ),
                  ],
                ),
                Row(
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
              ],
            ),
          ),
          Container(
              color: kSubmitButtonColor,
              height: kSubmitButtonHeight,
              margin: EdgeInsets.only(top: kSubmitButtonTopMargin),
              child: Text('placeholder for a button')
          ),
        ],
      ),
    );
  }
}
