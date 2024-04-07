import 'package:flutter/material.dart';
import 'package:travel_guide/widgets/navigation_bar/navbar_item.dart';

class DrawerItems extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItems({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          const SizedBox(
            width: 30,
          ),
          NavBarItem(title)
        ],
      ),
    );
  }
}
