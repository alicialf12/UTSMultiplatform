import 'package:flutter/material.dart';

class AppDetails extends StatelessWidget {
  const AppDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'TRAVEL BUDDY',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Welcome to Travel Buddy, your loyal companion on adventures! We don't just offer ordinary adventures, but also lovely memories and unforgettable esperience. With our service, you can easliy book a travel guide fluent in various languages and access the most captivating tourist destinations worldwide. Make your journey an unforgettable experience with Travel Buddy - the best companion for all your adventures!",
            style:Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}