import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bmi_calc/screens/input_screen.dart';
import 'package:bmi_calc/screens/result_screen.dart';
import 'package:bmi_calc/constants.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(BMICalculatorApp());
    }
  );
}

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputScreen(),
        '/result': (context) => ResultScreen(),
      },
    );
  }
}


