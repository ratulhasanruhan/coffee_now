import 'package:coffee_now/util/colors.dart';
import 'package:coffee_now/util/constants.dart';
import 'package:coffee_now/view/Home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app_name,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: primaryColor,
            secondary: secondaryColor,
        ),
        useMaterial3: true,
        fontFamily: GoogleFonts.sen().fontFamily,
      ),
      home: Home(),
    );
  }
}

