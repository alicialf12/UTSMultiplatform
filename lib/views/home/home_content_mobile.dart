import 'package:flutter/material.dart';
import 'package:travel_guide/widgets/app_details/app_details.dart';
import 'package:travel_guide/widgets/call_to_action/call_to_action.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AppDetails(),
          SizedBox(height: 15),
          CallToAction('Log In'),
          SizedBox(height: 15),
          CallToAction('Sign Up'),
        ],
      ),
    );
  }
}