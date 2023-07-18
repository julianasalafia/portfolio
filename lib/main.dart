import 'package:curriculum_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'curriculum_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: kTextTheme,
      ),
      home: CurriculumPage(),
    );
  }
}
