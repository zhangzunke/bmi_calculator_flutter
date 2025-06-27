import 'package:flutter/material.dart';
import '../components/buttom_button.dart';
import '../components/resuable_card.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final bmiResult = args['bmiResult']!;
    final resultText = args['resultText']!;
    final interpretation = args['interpretation']!;
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText, style: kResultTextStyle),
                  Text(bmiResult, style: kBMITextStyle),
                  Text(
                    textAlign: TextAlign.center,
                    interpretation,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
            onPressed: () {
              // Navigate to results page
              Navigator.pop(context);
            },
            label: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
