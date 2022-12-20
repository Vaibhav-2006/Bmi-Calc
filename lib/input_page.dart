import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;
  @override
  Widget build(BuildContext context) {
    //1 = MALE , 2=FEMALE
    void updateColour(int gender) {
      if (gender == 1) {
        if (maleCardColour == inactiveCardColour) {
          maleCardColour = activeCardColour;
          femaleCardColour = inactiveCardColour;
        } else
          maleCardColour = inactiveCardColour;
      } else if (gender == 2) {
        if (femaleCardColour == inactiveCardColour) {
          femaleCardColour = activeCardColour;
          maleCardColour = inactiveCardColour;
        } else
          femaleCardColour = inactiveCardColour;
      }
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          updateColour(1);
                        },
                      );
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      cardChild: IconContents(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          updateColour(2);
                        },
                      );
                    },
                    child: ReusableCard(
                      colour: femaleCardColour,
                      cardChild: IconContents(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: activeCardColour,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
