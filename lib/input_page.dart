import 'package:flutter/material.dart';

const bottonContainerHeight = 80.0;
const reusableCardColor = Color(0xFF1D1E33);
const bottonContainerColor = Color(0xFFEB1555);

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
                  colour: Color(0xFF1D1E33),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(0xFF1D1E33),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottonContainerColor,
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

  ReusableCard({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: this.colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
