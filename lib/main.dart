import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //J'applique le theme dark en modifiant quelques parametres
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0C1020),
        scaffoldBackgroundColor: Color(0xff0C1020),
      ),
      home: InputPage(),
    );
  }
}
