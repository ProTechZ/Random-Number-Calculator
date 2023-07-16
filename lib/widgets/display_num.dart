import 'package:flutter/material.dart';

class DisplayedNumber extends StatelessWidget {
  const DisplayedNumber(this.number, {super.key});

  final num number;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$number',
      style: const TextStyle(
        fontSize: 23,
        decoration: TextDecoration.underline
      ),
      
    );
  }
}
