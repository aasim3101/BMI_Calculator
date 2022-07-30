import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {

  @override
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(buttonTitle, style: kLargeButtonTextStyle,)
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomContainerColour,
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}