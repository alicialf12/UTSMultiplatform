import 'package:flutter/material.dart';
import 'package:travel_guide/widgets/navigation_bar/navbar_item.dart';
import 'package:travel_guide/widgets/navigation_bar/navbar_logo.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Our Guide'),
              SizedBox(width: 20), 
              NavBarItem('Destination Choices'),
              SizedBox(width: 20),
              NavBarItem('Reviews'),
            ],
          ),
        ],
      ),
    );
  }
}