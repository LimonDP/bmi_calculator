import 'package:bmi_calculator/widgets/height_expanded.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ageweight.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

enum GenderEnum {
  FEMALE,
  MALE,
}

class _BmiCalculatorState extends State<BmiCalculator> {
  static const Color activeColor = Color(0xFFF9116E);
  static const Color inactiveColor = Color(0xFF282C4F);
  static var contColor = inactiveColor;
  static var contColor1 = inactiveColor;

  malebutton(GenderEnum data) {
    if (data == GenderEnum.MALE) {
      contColor1 = inactiveColor;
      if (contColor == inactiveColor) {
        contColor = activeColor;
      } else {
        contColor = inactiveColor;
      }
    }
    if (data == GenderEnum.FEMALE) {
      contColor = inactiveColor;
      if (contColor1 == inactiveColor) {
        contColor1 = activeColor;
      } else {
        contColor1 = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        malebutton(GenderEnum.MALE);
                      });
                    },
                    child: ExpandedContainer(
                      containerData: ExpandedCard(
                        cardText: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                      containerColor: contColor,
                      borderRad:
                          BorderRadius.only(topLeft: Radius.circular(16.0)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        malebutton(GenderEnum.FEMALE);
                      });
                    },
                    child: ExpandedContainer(
                      containerData: ExpandedCard(
                        cardText: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                      containerColor: contColor1,
                      borderRad:
                          BorderRadius.only(topRight: Radius.circular(16.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ExpandedContainer(
              containerColor: Theme.of(context).backgroundColor,
              containerData: HeightExpanded(),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: ExpandedContainer(
                    borderRad:
                        BorderRadius.only(bottomLeft: Radius.circular(16.0)),
                    containerColor: Theme.of(context).backgroundColor,
                    containerData: AgeWeight(
                      textValue: 'WEIGHT',
                      integerValue: 50,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ExpandedContainer(
                        borderRad: BorderRadius.only(
                            bottomRight: Radius.circular(16.0)),
                        containerData: AgeWeight(
                          textValue: 'AGE',
                          integerValue: 22,
                        ),
                        containerColor: Theme.of(context).backgroundColor)),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFF9116E),
            ),
            onPressed: () {},
            child: Text(
              'CALCULATE YOUR BMI',
              style: TextStyle(fontSize: 23),
            ),
          ),
        )
      ],
    );
  }
}

class ExpandedContainer extends StatelessWidget {
  final Widget? containerData;
  final BorderRadiusGeometry? borderRad;
  final Color containerColor;
  const ExpandedContainer(
      {required this.containerColor, this.containerData, this.borderRad});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: borderRad,
      ),
      child: containerData,
    );
  }
}

class ExpandedCard extends StatelessWidget {
  final String cardText;
  final IconData icon;
  const ExpandedCard({required this.cardText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 66.0,
        ),
        Text(cardText,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
