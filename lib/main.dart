import 'package:bmi_2/screens/home.dart';

import 'package:flutter/material.dart';

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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff0a0321),
        textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: Color(0xff0a0321),
        ),
      ),
      home: const Home(),
    );
  }
}
