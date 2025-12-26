import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final double userBMI;
  const ResultsPage({super.key, required this.userBMI});
  String bmiCategory(double userBmi) {
    if (userBmi < 18.5) {
      return "Underweight";
    } else if (18.5 < userBmi && userBmi < 24.9) {
      return "Normal";
    } else {
      return "Overweight";
    }
  }

  String bmiInterpretation(double userBmi) {
    if (userBmi < 18.5) {
      return "You need to eat more";
    } else if (18.5 <= userBmi && userBmi <= 24.9) {
      return "You are Normal";
    } else {
      return "You are fat";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('BMI CALCULATOR'))),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Your Result', style: kNumberTextStyle),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      bmiCategory(userBMI).toUpperCase(),
                      style: TextStyle(color: Colors.green),
                    ),
                    Center(
                      child: Text(
                        userBMI.toStringAsFixed(1),
                        style: kNumberTextStyle,
                      ),
                    ),
                    Text(bmiInterpretation(userBMI)),
                  ],
                ),
                colour: Color(0xFF1D1E33),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
