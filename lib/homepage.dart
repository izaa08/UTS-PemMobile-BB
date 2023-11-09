import 'package:flutter/material.dart';
import 'package:mobile_1/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF00BB6E),
          // backgroundColor: Colors.deepPurpleAccent,
        ),
        // textTheme: const TextTheme(
        //   bodyText1: TextStyle(color: Colors.blue),
        //   bodyText2: TextStyle(color: Colors.blue),
        // ),
        primaryColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.green,
        ),
        // scaffoldBackgroundColor: Colors.orange[100],
      ),
      title: 'Flutter Demo',
      home: const HomeScreen(),
    );
  }
}
