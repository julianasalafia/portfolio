import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> draw = [
    '▐▓█▀▀▀▀▀▀▀▀▀█▓▌░▄▄▄▄▄░',
    '▐▓█░░▀░░▀▄░░█▓▌░█▄▄▄█░',
    '▐▓█░░▄░░▄▀░░█▓▌░█▄▄▄█░',
    '▐▓█▄▄▄▄▄▄▄▄▄█▓▌░█████░',
    '░░░░▄▄███▄▄░░░░░█████░',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodySmall: kColorizeTextStyle,
          bodyMedium: kColorizeTextStyle,
          bodyLarge: kColorizeTextStyle,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10.0),
                  Text('HELLO, I\'M JULIANA SALAFIA'),
                  SizedBox(height: 10.0),
                  Text(draw[0]),
                  Text(draw[1]),
                  Text(draw[2]),
                  Text(draw[3]),
                  Text(draw[4]),
                  SizedBox(height: 10.0),
                  Text(
                      'I\'m a software engineer based in São Paulo, Brazil with 2 years of experience in the software industry. My focus area for the past few years has been android mobile front-end development with Kotlin. I also have 4 years of experience with WordPress.'),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('CONTACT'),
                            Text(
                                'mail..................juliana.salafia@gmail.com'),
                            Text(
                                'linkedin......linkedin.com.br/en/julianasalafia'),
                            Text(
                                'github................github.com/julianasalafia'),
                            Text(
                                'behance...................behance.net/jssalafia'),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('TECH'),
                          Text('flutter'),
                          Text('dart'),
                          Text('mobile'),
                          Text('android native'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CONTACT'),
                  Text('mail'),
                  Text('linkedin'),
                  Text('github'),
                  Text('behance'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
