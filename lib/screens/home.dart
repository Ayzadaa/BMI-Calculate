// ignore_for_file: unnecessary_new

import 'package:bmi_2/components/red_btn.dart';
import 'package:bmi_2/components/iconInCard.dart';
import 'package:bmi_2/components/reusableCard.dart';
import 'package:bmi_2/components/rounded_btn.dart';
import 'package:bmi_2/components/slider.dart';
import 'package:bmi_2/methods/calc_btn.dart';
import 'package:bmi_2/screens/resultCard.dart';
import 'package:bmi_2/styles.dart/text_styles.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

void Function()? onPressed;
bool isFemale = false;
int _height = 180;
int _weight = 65;
int _age = 28;

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculate'.toUpperCase(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                    myChild: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: IconInCard(
                        icon: Icons.male,
                        title: "MALE",
                        isFemale: !isFemale,
                      ),
                    ),
                  ),
                  ReusableCard(
                    myChild: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: IconInCard(
                        icon: Icons.female,
                        title: "FEMALE",
                        isFemale: isFemale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ReusableCard(
              myChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: AppStyles.textGrey,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(_height.toString(), style: AppStyles.textWhite),
                      const Text('cm', style: AppStyles.labelStyle),
                    ],
                  ),
                  SliderInCard(
                    value: _height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        _height = newValue.toInt().round();
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableCard(
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: AppStyles.textGrey,
                        ),
                        Text(
                          _weight.toString(),
                          style: AppStyles.textWhite,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedBtn(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                            ),
                            const SizedBox(width: 20.0),
                            RoundedBtn(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ReusableCard(
                    myChild: Column(
                      children: [
                        const Text(
                          "AGE",
                          style: AppStyles.textGrey,
                        ),
                        Text(
                          _age.toString(),
                          style: AppStyles.textWhite,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedBtn(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  _age--;
                                });
                              },
                            ),
                            const SizedBox(width: 20.0),
                            RoundedBtn(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  _age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            RedButton(
              onPressed: () {
                CalculateBMI calculateBMI = CalculateBMI(
                  height: _height,
                  weight: _weight,
                );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultCard(
                              bmi: calculateBMI.calcBmi(),
                              result: calculateBMI.getResult(),
                              feedback: calculateBMI.feedback(),
                            )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
