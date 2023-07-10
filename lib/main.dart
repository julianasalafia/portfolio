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
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                child: Column(
                  children: [
                    Text('name', style: TextStyle(color: Colors.white)),
                    Image.asset(
                      'assets/images/profile.jpg',
                      scale: 3,
                    ),
                    Text('description', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 10.0),
                    Text('contact', style: TextStyle(color: Colors.white)),
                    Text('mail', style: TextStyle(color: Colors.white)),
                    Text('linkedin', style: TextStyle(color: Colors.white)),
                    Text('github', style: TextStyle(color: Colors.white)),
                    Text('behance', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
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
            Expanded(
              child: Column(
                children: [
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
          ],
        ),
      ),
    );
  }
}
