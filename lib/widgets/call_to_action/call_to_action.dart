import 'package:flutter/material.dart';
import 'package:travel_guide/constants/app_colors.dart';

class CallToAction extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const CallToAction(this.title, {super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(5)
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title, style: const 
          TextStyle(
          fontSize: 18, 
          fontWeight: FontWeight.bold, fontFamily: 'Poppins',
          color: Colors.white
        ),
        ),
      ),
    );
  }
}