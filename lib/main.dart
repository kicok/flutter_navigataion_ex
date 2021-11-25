import 'package:flutter/material.dart';
import 'package:flutter_navigation_ex/food_screen.dart';
import 'package:flutter_navigation_ex/login_screen.dart';
import 'package:flutter_navigation_ex/transportation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey),
      ),
      home: const LoginScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/transportation': (context) => const TransportationScreen(),
        '/food': (context) => const FoodScreen(),
      },
    );
  }
}
