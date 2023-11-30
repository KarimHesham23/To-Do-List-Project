import 'package:flutter/material.dart';

class DigitsOfTime extends StatelessWidget {
  const DigitsOfTime({super.key, required this.number});
  final int number;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        number < 10 ? "0$number" : number.toString(),
        style: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
