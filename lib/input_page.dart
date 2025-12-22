import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColour = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('BMI CALCULATOR'))),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: Gender(
                        gender: 'MALE',
                        gender_symbol: Icon(FontAwesomeIcons.mars, size: 80),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: Gender(
                        gender: 'FEMALE',
                        gender_symbol: Icon(FontAwesomeIcons.venus, size: 80),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: activeCardColour)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: activeCardColour)),
                  Expanded(child: ReusableCard(colour: activeCardColour)),
                ],
              ),
            ),
            Container(
              color: bottomContainerColour,
              height: bottomContainerHeight,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}

class Gender extends StatelessWidget {
  const Gender({super.key, required this.gender, required this.gender_symbol});
  final String gender;
  final Icon gender_symbol;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        gender_symbol,
        SizedBox(height: 15.0),
        Text(
          gender,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.colour, this.cardChild});

  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
