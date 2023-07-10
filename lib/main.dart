import 'package:flutter/material.dart';

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
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Text('name'),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum venenatis diam id facilisis. Cras ut ante euismod felis faucibus efficitur nec sed quam. Aenean sit amet nisi non lacus dapibus venenatis sed sit amet velit. Curabitur ligula arcu, pellentesque quis ligula vel, porttitor lacinia dolor. In commodo dolor tincidunt venenatis ullamcorper. Etiam sodales augue viverra diam interdum, vel bibendum ante egestas. Sed ac laoreet turpis. Pellentesque maximus magna ut nisi eleifend hendrerit.'),
            SizedBox(height: 10.0),
            Text('contact'),
            Text('mail'),
            Text('linkedin'),
            Text('github'),
            Text('behance'),
            SizedBox(height: 10.0),
            Text('EXPERIENCE'),
            Text('experience 1'),
            Text('description 1'),
            Text('experience 2'),
            Text('description 2'),
            SizedBox(height: 10.0),
            Text('HARD SKILLS'),
            Text('experience 1'),
            Text('description 1'),
            SizedBox(height: 10.0),
            Text('SOFT SKILLS'),
            Text('experience 1'),
            Text('description 1'),
            SizedBox(height: 10.0),
            Text('LANGUAGES'),
            Text('1'),
            Text('2'),
            SizedBox(height: 10.0),
            Text('EXTRAS'),
            Text('1'),
            Text('2'),
            SizedBox(height: 10.0),
            Text('EDUCATION'),
            Text('1'),
            Text('2'),
            SizedBox(height: 10.0),
            Text('FRAMEWORKS'),
            Text('1'),
            Text('2'),
          ],
        ),
      ),
    );
  }
}
