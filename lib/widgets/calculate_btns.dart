import 'package:flutter/material.dart';
import 'package:random_number_calculator/widgets/calculate_btn.dart';

class CalculatedButtons extends StatelessWidget {
  const CalculatedButtons(
      {super.key, required this.btnTexts, required this.onPresseds});

  final List<String> btnTexts;
  final List<void Function()> onPresseds;

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        CalculateButton(onPressed: onPresseds[0], text: btnTexts[0]),
        const SizedBox(width: 20),
        CalculateButton(onPressed: onPresseds[1], text: btnTexts[1]),
        const SizedBox(width: 20),
        CalculateButton(onPressed: onPresseds[2], text: btnTexts[2]),
      ],
    );
  }
}
