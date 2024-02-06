import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTap extends StatefulWidget {
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  double rotationAngle = 0.0;
  int sebhaCounter =0;
  String sebhaText ='سبحان الله';
  int index =0;
  List <String> sebhaWords=
  ['سبحان الله',
  'الحمد لله ',
    'الله أكبر',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.15,
                        bottom: MediaQuery.of(context).size.width * 0.05),
                    child: Image(
                      image: AssetImage('assets/images/head_of_sebha.png'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05,
                          top: MediaQuery.of(context).size.height * 0.1),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rotationAngle += 10 * pi / 180;
                              sebhaCounter++;
                              if (sebhaCounter == 34) {
                                sebhaCounter = 0;
                                index++;
                                sebhaText = sebhaWords[index];
                              }
                              if (index == 5) {
                                index = 0;
                              }
                            });
                          },
                          child: Transform.rotate(
                              angle: rotationAngle,
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/body_of_sebha.png'))))),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      top: MediaQuery.of(context).size.height * 0.03),
                  child: Text(
                    AppLocalizations.of(context)!.sebha_counter,
                    style: Theme.of(context).textTheme.titleMedium,
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFC8B396)),
                  width: 69,
                  height: 81,
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      top: MediaQuery.of(context).size.height * 0.03),
                  child: Center(
                      child: Text(
                    '$sebhaCounter',
                    style: Theme.of(context).textTheme.titleMedium,
                  )))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFC8B396)),
                  width: 137,
                  height: 51,
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      top: MediaQuery.of(context).size.height * 0.03),
                  child: Center(
                      child: Text(
                    '$sebhaText',
                    style: Theme.of(context).textTheme.titleMedium,
                  )))
            ],
          ),


        ],
      ),
    );
  }
}
