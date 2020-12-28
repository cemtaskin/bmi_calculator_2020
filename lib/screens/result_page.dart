import 'package:bmi_calculator_2/components/bottom_button.dart';
import 'package:bmi_calculator_2/constants.dart';
import 'package:bmi_calculator_2/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                child: Text('Your Result', style: kTitleTextStyle),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        'Normal',
                        style: kResultTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        '18,3',
                        style: kBMITextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                          'Your BMI result is quite low, you should eat more!',
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle),
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
