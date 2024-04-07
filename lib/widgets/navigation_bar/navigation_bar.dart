import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:travel_guide/widgets/navigation_bar/navbar_mobile.dart';
import 'package:travel_guide/widgets/navigation_bar/navbar_tablet_destop.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return const NavBarMobile();
        } 
        else {
          return const NavBarTabletDesktop();
        }
      },
    );
  }
}
