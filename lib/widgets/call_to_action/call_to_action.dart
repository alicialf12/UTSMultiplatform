import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 9, 52, 84),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text(title,style: const TextStyle(
        fontSize: 18, 
        fontWeight: FontWeight.bold, fontFamily: 'Poppins',
        color: Colors.white
      ),
      ),
    );
  }
}