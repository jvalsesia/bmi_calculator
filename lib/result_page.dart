import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmi;
  final String bmiInterpretation;

  const ResultPage(
      {Key? key,
      required this.bmiResult,
      required this.bmi,
      required this.bmiInterpretation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Your Result',
            style: kTitleTextStyle,
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kActiveCardColor,
              onPress: () => {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      bmiResult.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmi,
                      style: kBmiTextStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmiInterpretation,
                      style: kBodyResultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Column(
              children: [
                Container(
                  //color: kBottomContainerColor,
                  margin: const EdgeInsets.only(top: 15.0),
                  decoration: BoxDecoration(
                    color: kBottomContainerColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  width: double.infinity,
                  height: kBottomContainerHeight,
                  child: const Center(
                    child: Text('RE-CALCULATE', style: kLargeButtonTextStyle),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
