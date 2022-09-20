import 'screens.dart';
import 'package:flutter/material.dart';
import 'dart:html';
void main()
{
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow,visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen(),
    
    );
    
  }
}