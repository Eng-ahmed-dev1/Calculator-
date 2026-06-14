import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;

  const CustomContainer({
    super.key,
    required this.text,
    this.width = 50,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF0A0F1F), // Dark Navy
            Color(0xFF1A1F35), // Cyber Dark
          ],
        ),
        border: Border.all(color: Colors.cyanAccent, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.cyanAccent.withOpacity(0.5),
            blurRadius: 15,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.cyanAccent,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
