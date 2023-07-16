import 'package:flutter/material.dart';

class GenerateRandomNumberBtn extends StatelessWidget {
  const GenerateRandomNumberBtn(this.onPressed, {super.key});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        backgroundColor: const Color.fromARGB(255, 204, 223, 246),
      ),
      child: const Text(
        'Generate Random Number',
        style: TextStyle(
          fontSize: 19,
          color: Colors.black,
        ),
      ),
    );
  }
}
