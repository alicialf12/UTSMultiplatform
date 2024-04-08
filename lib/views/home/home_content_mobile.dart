import 'package:flutter/material.dart';
import 'package:travel_guide/pages/log_in_page.dart';
import 'package:travel_guide/pages/sign_up_page.dart';
import 'package:travel_guide/widgets/app_details/app_details.dart';
import 'package:travel_guide/widgets/call_to_action/call_to_action.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const AppDetails(),
          const SizedBox(height: 15),
          CallToAction(
            'Log In',
            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const LogInPage()));
            },
          ),
          const SizedBox(height: 15),
          CallToAction(
            'Sign Up',
            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const SignUpPage()));
            },
          ),
        ],
      ),
    );
  }
}