import 'package:flutter/material.dart';
import './App_Screens/HomeScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: HomeScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}
