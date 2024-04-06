import 'package:flutter/material.dart';
import 'package:travel_guide/views/home/home_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.lightBlue,
        useMaterial3: true,
      ),
      home:  const HomeView(key: null,),
    );
  }
}

