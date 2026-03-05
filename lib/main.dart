import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black)
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
