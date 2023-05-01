import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color textcolor;

  const Button({
    super.key,
    required this.text,
    required this.bgcolor,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
