import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  const CustomContainer({
    super.key,
    required this.text,
    this.width = 50,
    this.height = 50,
    this.color,
    this.textColor = Colors.cyanAccent,
    this.fontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        gradient: color == null
            ? const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF0A0F1F), // Dark Navy
                  Color(0xFF1A1F35), // Cyber Dark
                ],
              )
            : null,
        border: Border.all(color: Colors.cyanAccent, width: 1.5),
        boxShadow: [
          // BoxShadow(
          //   color:  Colors.cyanAccent.withOpacity(0.5),
          //   blurRadius: 15,
          //   spreadRadius: 2,
          // ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: textColor,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
