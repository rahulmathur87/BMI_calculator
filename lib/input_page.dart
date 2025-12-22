import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
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
                      cardChild: IconContent(
                        label: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(
                        label: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
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
