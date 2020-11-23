import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';

class CardContent extends StatelessWidget {
  final String genderType;
  final IconData genderIcon;

  const CardContent({@required this.genderType, this.genderIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(genderType, style: kLabelTextStyle)
      ],
    );
  }
}
