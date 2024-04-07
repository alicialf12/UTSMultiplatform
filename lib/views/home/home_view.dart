import 'package:flutter/material.dart';
import 'package:travel_guide/widgets/app_details/app_details.dart';
import 'package:travel_guide/widgets/call_to_action/call_to_action.dart';
import 'package:travel_guide/widgets/centered_view/centered_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(
              destinations: [
                _NavBarItem('Our Guides'),
                _NavBarItem('Destination Choices'),
                _NavBarItem('Reviews'),
              ],
            ),
            
            Expanded(
              child: Row(
                children: <Widget>[
              AppDetails(),

            Expanded(child: Center(child:CallToAction('Log In') ),
            ),
            SizedBox(height: 10,),
            CallToAction('Sign Up')
            ],))
          ],
        ),
      ),
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

class _NavBarItem extends StatelessWidget {
  final String title;

  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18),
    );
  }
}