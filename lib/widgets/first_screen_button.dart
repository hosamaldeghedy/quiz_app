import 'package:flutter/material.dart';

class FirstScreenButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final  Color buttonColor;
  final  dynamic borderside;
  const FirstScreenButton({
    super.key,
    required this.buttonText,
    required this.onPressed, required this.buttonColor, this.borderside
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.maxFinite, 60),
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          side: borderside

      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}