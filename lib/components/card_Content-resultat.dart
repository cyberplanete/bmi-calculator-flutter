import 'package:bmi_calculator/constants.dart';
import 'file:///H:/Mes%20Documents%20Mega/Developpement/MesProjetsDev/Perso/bmi-calculator-flutter/lib/screens/input_page.dart';
import 'package:flutter/cupertino.dart';

class CardContentResultat extends StatelessWidget {
  final int poids;
  final int taille;
  final int age;

  const CardContentResultat(
      {@required this.poids, @required this.taille, @required this.age});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            children: [
              Text('LE RESULAT'),
            ],
          ),
        ),
      ],
    );
  }
}
