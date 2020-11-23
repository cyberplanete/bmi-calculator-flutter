import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'carteReutilisable.dart';
import 'card_Content.dart';
import 'constants.dart';

enum GenderType { Femme, Homme }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardCouleur = kInativeCardCouleur;
  Color femaleCardCouleur = kInativeCardCouleur;
  int tailleCm = 180;
  GenderType selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATRICE IMC'),
      ),
      body: Column(
        children: [
          Expanded(
            // Répartition des rows en %
            child: Row(
              //Répartition des cards à 50% d'espace chacune
              children: [
                Expanded(
                  flex: 5,
                  child: new CarteReutilisable(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.Homme;
                      });
                    },
                    carteContent: new CardContent(
                      genderType: 'Homme',
                      genderIcon: FontAwesomeIcons.mars,
                    ),
                    couleur: selectedGender == GenderType.Homme
                        ? kActiveCardCouleur
                        : kInativeCardCouleur,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: new CarteReutilisable(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.Femme;
                      });
                    },
                    carteContent: new CardContent(
                      genderType: 'Femme',
                      genderIcon: FontAwesomeIcons.venus,
                    ),
                    couleur: selectedGender == GenderType.Femme
                        ? kActiveCardCouleur
                        : kInativeCardCouleur,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            //Taille
            child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: new CarteReutilisable(
                    couleur: kActiveCardCouleur,
                    carteContent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Taille',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //Aligner cm sur 180
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          //Erreur crossAxisAlignment !=
                          // CrossAxisAlignment.baseline || textBaseline != null': is not true.
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              tailleCm.toString(),
                              style: kLabelTextStyleBold,
                            ),
                            Text('cm'),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFF8D8E98),
                            overlayColor: Color(0x30eb1555),
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xffeb1555),
                            thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 15.00),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30),
                          ),
                          child: Slider(
                            value: tailleCm.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newValue) {
                              setState(() {
                                tailleCm = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: new CarteReutilisable(
                    couleur: kActiveCardCouleur,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: new CarteReutilisable(
                    couleur: kActiveCardCouleur,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomCardCouleur,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerCard,
          )
        ],
      ),
    );
  }
}
