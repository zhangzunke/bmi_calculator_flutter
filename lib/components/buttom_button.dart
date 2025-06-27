import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomButton extends StatelessWidget {
  const ButtomButton({super.key, required this.onPressed, required this.label});
  final VoidCallback onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(child: Text(label, style: kLargeButtonTextStyle)),
      ),
    );
  }
}
