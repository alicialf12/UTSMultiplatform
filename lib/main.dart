import 'package:flutter/material.dart';
import 'package:travel_guide/views/home/home_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Guide',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.lightBlue,
        useMaterial3: true,
      ),
      home:  const HomeView(key: null,),
    );
  }
}