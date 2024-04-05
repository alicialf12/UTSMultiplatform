import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget{
  const NavigationBar({required Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150, 
            child:Image.asset('assets/logo.jpg')
          ),

          const Row(
            mainAxisSize:MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              _NavBarItem('Our Guide'),
              SizedBox(width: 60,),
              _NavBarItem('Destination Choices'),
              SizedBox(width: 60,),
              _NavBarItem('Log In'),
              SizedBox(width: 60,),
              _NavBarItem('Sign Up'),
              SizedBox(width: 60,)
          ],)
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem (this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontSize:18),
    );
  }
}