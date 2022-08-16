import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: kAppBackgroundColor,
        ),
        scaffoldBackgroundColor: kAppBackgroundColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InputPage(),
        '/result': (context) => const InputPage(),
      },
    );
  }
}
