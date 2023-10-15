import 'package:flutter/material.dart';
import 'constants.dart';

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
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kGenderTextStyle,
        )
      ],
    );
  }
}
