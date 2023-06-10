import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_application/constants.dart';

class ColorChangeScreen extends StatefulWidget {
  const ColorChangeScreen({super.key});

  @override
  State<ColorChangeScreen> createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  Color backgroundColor = const Color.fromRGBO(255, 255, 255, 1);

  void implementBacgroundColor() {
    setState(() {
      backgroundColor = getRandomColor();
    });
  }

  Color getRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: implementBacgroundColor,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const Center(
          child: Text(
            "Hello there!",
            style: kStyleText,
          ),
        ),
      ),
    );
  }
}
