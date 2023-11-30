import 'package:flutter/material.dart';

class DayCycleClock extends StatelessWidget {
  const DayCycleClock({super.key, required this.isItAm});
  final bool isItAm;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        isItAm ? "AM" : "PM",
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
