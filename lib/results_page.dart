import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final double userBMI;

  const ResultsPage({super.key, required this.userBMI});

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
                  children: [Center(child: Text(userBMI.toStringAsFixed(1), style: kNumberTextStyle,))],
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
