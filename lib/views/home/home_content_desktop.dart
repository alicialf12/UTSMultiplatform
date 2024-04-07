import 'package:flutter/material.dart';
import 'package:travel_guide/widgets/app_details/app_details.dart';
import 'package:travel_guide/widgets/call_to_action/call_to_action.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        children: <Widget>[
          AppDetails(),
      
      Expanded(
        child: Center(
          child:CallToAction('Log In') 
        ),
      ),
      SizedBox(height: 10,),
      CallToAction('Sign Up')
        ],
      )
    );
  }
}