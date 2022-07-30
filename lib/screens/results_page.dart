import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/calculator_brain.dart';
class ResultsPage extends StatelessWidget {

  @override
  ResultsPage({@required this.bmiResult, @required this.bmiText, @required this.interpretation});
  final String bmiResult;
  final String bmiText;
  final String interpretation;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result', style: kResultTitleStyle,),
              )
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(bmiText.toUpperCase(), style: kResultTextStyle,),
                  Text(bmiResult, style: kBMITextStyle,),
                  Text(interpretation, style: kDescriptionTextStyle,textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          BottomButton(onTap: (){Navigator.pop(context);}, buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
