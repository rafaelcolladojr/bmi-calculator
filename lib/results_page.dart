import 'package:bmi_calculator/bottom_tray_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    Key? key,
    required this.bmi,
    required this.bmiLabel,
    required this.bmiMessage,
  }) : super(key: key);

  final String bmi, bmiLabel, bmiMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Your Result',
                style: kBoldTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiLabel.toUpperCase(),
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    bmi,
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiMessage,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomTrayButton(
            label: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
