import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resuable_card.dart';
import 'icon_content.dart';
import 'const.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  // Color maleCardColour = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;
  // //1= male 2=female
  // void updateColour(Gender selectedGender) {
  //   // if (selectedGender == Gender.male) {
  //   //   if (maleCardColour == inactiveCardColour) {
  //   //     maleCardColour = activeCardColour;
  //   //     femaleCardColour = inactiveCardColour;
  //   //   } else {
  //   //     maleCardColour = inactiveCardColour;
  //   //   }
  //   // }
  //   // if (selectedGender == Gender.female) {
  //   //   if (femaleCardColour == inactiveCardColour) {
  //   //     femaleCardColour = activeCardColour;
  //   //     maleCardColour = inactiveCardColour;
  //   //   } else {
  //   //     femaleCardColour = inactiveCardColour;
  //   //   }
  //   // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      //  body: const Center(
      //     child: Text('Body Text'),
      //   ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kactiveCardColour
                        : kinactiveCardColour,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kactiveCardColour
                        : kinactiveCardColour,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kinactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Height',
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        '180',
                        style: kNumberTextStyle,
                      ),
                      Text('cm',
                      style: klabelTextStyle,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kinactiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kinactiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kbottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kbottomContainerHeight,
          )
        ],
      ),
    );
  }
}
