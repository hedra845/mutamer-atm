import 'package:atm_mutamar/colores.dart';
import 'package:atm_mutamar/spalch_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATM Mutamar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'cairo',
        primaryColor: AppColors.primaryColor,
      ),
      home:  SplashScreen(),
    );
  }
}