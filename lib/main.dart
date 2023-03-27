import 'package:flower_shop/utils/colors.dart';
import 'package:flower_shop/view/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: kbgClr,
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen());
  }
}
