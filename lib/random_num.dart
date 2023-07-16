import 'dart:math';
import 'package:flutter/material.dart';
import 'package:random_number_calculator/widgets/calculate_btns.dart';
import 'package:random_number_calculator/widgets/display_num.dart';
import 'package:random_number_calculator/widgets/gen_random_num.dart';

class RandomNumber extends StatefulWidget {
  const RandomNumber({
    super.key,
  });

  void generateRandomNum() {}

  @override
  State<RandomNumber> createState() {
    return _RandomNumberState();
  }
}

class _RandomNumberState extends State<RandomNumber> {
  final random = Random();
  int randomNum = 0;
  num calculatedNum = 0;

  void generateRandomNum() {
    setState(() {
      randomNum = random.nextInt(1000) + 1;
      calculatedNum = randomNum;
    });
  }

  void calculate(operation) {
    final preCalculatedNum = calculatedNum;
    if (operation == 'add') {
      setState(() {
        calculatedNum++;
      });
    } else if (operation == 'min') {
      setState(() {
        calculatedNum--;
      });
    } else if (operation == 'mul') {
      setState(() {
        calculatedNum = calculatedNum * 2;
      });
    } else if (operation == 'div') {
      setState(() {
        calculatedNum = calculatedNum / 2;
      });
    } else if (operation == 'sqr') {
      setState(() {
        calculatedNum = calculatedNum * calculatedNum;
      });
    } else if (operation == 'sqt') {
      setState(() {
        calculatedNum = sqrt(calculatedNum);
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GenerateRandomNumberBtn(generateRandomNum),
        const SizedBox(height: 23),
        DisplayedNumber(randomNum),
        const SizedBox(height: 23),
        CalculatedButtons(
          btnTexts: const ['+ 1', '− 1', '× 2'],
          onPresseds: [
            () => calculate('add'),
            () => calculate('min'),
            () => calculate('mul')
          ],
        ),
        SizedBox(height: 2),
        CalculatedButtons(
          btnTexts: const ['÷ 2', 'x²', '√x'],
          onPresseds: [
            () => calculate('div'),
            () => calculate('sqr'),
            () => calculate('sqt')
          ],
        ),
        SizedBox(height: 23),

        DisplayedNumber(calculatedNum),
      ],
    );
  }
}
