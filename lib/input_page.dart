import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottonContainerHeight = 80.0;
const reusableCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: reusableCardColor,
                  cardChild: GenderIcons(
                    genderIcon: FontAwesomeIcons.mars,
                    gender: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: reusableCardColor,
                  cardChild: GenderIcons(
                    genderIcon: FontAwesomeIcons.mars,
                    gender: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: reusableCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsetsDirectional.only(top: 10.0),
            width: double.infinity,
            height: bottonContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  ReusableCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: this.colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

class GenderIcons extends StatelessWidget {
  final IconData genderIcon;
  final String gender;

  GenderIcons({this.genderIcon, this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'MALE',
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E88),
          ),
        )
      ],
    );
  }
}
