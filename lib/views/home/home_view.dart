import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:travel_guide/views/home/home_content_desktop.dart';
import 'package:travel_guide/views/home/home_content_mobile.dart';
import 'package:travel_guide/widgets/centered_view/centered_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile 
        ? const NavigationDrawer(children: [],)
        : null,
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            const NavigationBar(
              destinations: [
                NavBarItem('Our Guides'),
                NavBarItem('Destination Choices'),
                NavBarItem('Reviews'),
              ],
            ),
            
            Expanded(
              child: ScreenTypeLayout.builder(
                mobile: (BuildContext context) => const HomeContentMobile(),desktop: (BuildContext context) => const HomeContentDesktop()
              ),
            )
          ],
        ),
      ),
      )
      
    );
  }
}

class NavigationBar extends StatelessWidget {
  final List<Widget> destinations;

  const NavigationBar({super.key, required this.destinations});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 100,
            width: 190,
            child: Image.asset('assets/logo.jpg'),
          ),
          const SizedBox(width: 30),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: destinations.map((destination) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: destination,
            )).toList(),
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;

  const NavBarItem(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18),
    );
  }
}