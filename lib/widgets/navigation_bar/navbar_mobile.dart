import 'package:flutter/material.dart';
import 'package:travel_guide/widgets/navigation_bar/navbar_logo.dart';


class NavBarMobile extends StatelessWidget {
  const NavBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            }, 
            icon: const Icon(Icons.menu)
          ),
          const NavBarLogo(),
        ],
      ),
    );
  }
}