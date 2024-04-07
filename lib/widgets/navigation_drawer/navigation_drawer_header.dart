import 'package:flutter/material.dart';
import 'package:travel_guide/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("BEGIN YOUR ADVENTURE",
          style: TextStyle(
            fontSize: 10, 
            fontWeight: FontWeight.bold, fontFamily: 'Poppins',
            color: Colors.white),
          ),

          Text("TAP HERE",
          style: TextStyle(
            color: Colors.white),
          ),
      ],),
    );
  }
}