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
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.all(kScreenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
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
//                    child: Column(),
                            bgColor: kCardWrapperBgColor,
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
