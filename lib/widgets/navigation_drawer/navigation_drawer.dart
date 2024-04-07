import 'package:flutter/material.dart';
import 'package:travel_guide/widgets/navigation_drawer/drawer_items.dart';
import 'package:travel_guide/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16 )
        ],
      ),
      child: const Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItems(title:'Our Guides', icon: Icons.people),
          DrawerItems(title:'Destination Choices', icon: Icons.travel_explore),
          DrawerItems(title:'Reviews', icon: Icons.comment),
      ],)
    );
  }
}