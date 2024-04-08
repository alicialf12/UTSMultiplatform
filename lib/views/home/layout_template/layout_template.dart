import 'package:flutter/material.dart' hide NavigationBar;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:travel_guide/views/home/home_view.dart';
import 'package:travel_guide/widgets/centered_view/centered_view.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? const NavigationDrawer(children: [],) : null,
        backgroundColor: Colors.white,
        body: const CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(destinations: [
                NavBarItem('Our Guides'),NavBarItem('Destination Choices'),NavBarItem('Reviews'),
              ],),
          
            ],
          ),
        ),
      ),
    );
  }
}