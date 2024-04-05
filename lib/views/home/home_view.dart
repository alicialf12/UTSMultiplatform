import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          NavigationBar(
            destinations: [
              _NavBarItem('Our Guides'),
              _NavBarItem('Destination Choices'),
              _NavBarItem('Reviews'),
              _NavBarItem('Log In'),
              _NavBarItem('Sign Up'),
            ],
          ),
        ],
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
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/logo.jpg'),
          ),
          const SizedBox(width: 30),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: destinations,
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
