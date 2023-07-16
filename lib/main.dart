import 'package:curriculum_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.green,
                child: Column(
                  children: [
                    Text('Juliana Salafia', style: kTitleStyle),
                    Text(
                        'Olá :) Sou a Juliana, desenvolvedora android, moro na cidade de Santos em São Paulo e atuo com desenvolvimento frontend mobile utilizando a linguagem Kotlin.'),
                  ],
                ),
              ),
              Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Text('Contato', style: kTitleStyle),
                    InkWell(
                      child: Text('email'),
                      onTap: () => launchUrl(
                          Uri.parse('mailto:juliana.salafia@gmail.com')),
                    ),
                    InkWell(
                      child: Text('linkedin'),
                      onTap: () => launchUrl(Uri.parse(
                          'https://www.linkedin.com/in/julianasalafia/')),
                    ),
                    InkWell(
                      child: Text('github'),
                      onTap: () => launchUrl(
                          Uri.parse('https://github.com/julianasalafia')),
                    ),
                    InkWell(
                      child: Text('behance'),
                      onTap: () => launchUrl(
                          Uri.parse('https://www.behance.net/jssalafia')),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                child: Column(
                  children: [
                    Text('Experiência', style: kTitleStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('Desenvolvedora Android @ Player’s Bank',
                                style: kSubtitleStyle),
                            Text(
                                'Itaú Unibanco, São Paulo, Brazil – (Maio 2021 - Abril 2023)'),
                            Text('descrição'),
                          ],
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          children: [
                            Text('Social Media / SEO Analyst',
                                style: kSubtitleStyle),
                            Text(
                                'FD Comunicação - PR Games&Esports, Jundiaí, Brasil – (Agosto 2018 - Maio 2021'),
                            Text('descrição'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('HARD SKILLS', style: kTitleStyle),
                        Text('Kotlin'),
                        Text('descrição'),
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      children: [
                        Text('SOFT SKILLS', style: kTitleStyle),
                        Text('fofa'),
                        Text('descrição'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey,
                child: Container(
                  child: Column(
                    children: [
                      Text('Idiomas', style: kTitleStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text('Inglês'),
                              Text('nível'),
                            ],
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            children: [
                              Text('Português'),
                              Text('nível'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.pink,
                child: Column(
                  children: [
                    Text('Educação', style: kTitleStyle),
                    Text('Design de Games'),
                    Text('descrição'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
