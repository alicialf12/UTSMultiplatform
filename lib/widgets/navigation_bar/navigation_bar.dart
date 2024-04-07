import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:travel_guide/widgets/navigation_bar/navbar_mobile.dart';
import 'package:travel_guide/widgets/navigation_bar/navbar_tablet_destop.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const NavBarMobile(),
      tablet: (BuildContext context) => const NavBarTabletDesktop(),
    );
  }
}
