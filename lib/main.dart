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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: kTextTheme,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Juliana Salafia', style: kTitleStyle),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: kBoxDecoration,
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                                'Olá :) Sou a Juliana, desenvolvedora android, moro na cidade de Santos em São Paulo e atuo com desenvolvimento frontend mobile utilizando a linguagem Kotlin.'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('Contato', style: kTitleStyle),
                    Container(
                      decoration: kBoxDecoration,
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
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
                  ],
                ),
                Column(
                  children: [
                    Text('Experiência', style: kTitleStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: kBoxDecoration,
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Desenvolvedora Android @ Player’s Bank',
                                    style: kSubtitleStyle),
                                Text(
                                    'Itaú Unibanco, São Paulo, Brazil – (Maio 2021 - Abril 2023)'),
                                Text(
                                    'Participei do desenvolvimento frontend Android em um projeto white label, onde lançamos o Player\'s Bank, um novo produto financeiro voltado para gamers menores de idade. Colaborei com a equipe de UX/UI na atualização do design system da plataforma e realizei testes automatizados com Espresso. Além disso, tive contato diário com Git, arquitetura MVVM e Kotlin.'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Container(
                            decoration: kBoxDecoration,
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text('Social Media / SEO Analyst',
                                    style: kSubtitleStyle),
                                Text(
                                    'FD Comunicação - PR Games&Esports, Jundiaí, Brasil – (Agosto 2018 - Maio 2021'),
                                Text(
                                    'Participei do desenvolvimento frontend Android em um projeto white label, onde lançamos o Player\'s Bank, um novo produto financeiro voltado para gamers menores de idade. Colaborei com a equipe de UX/UI na atualização do design system da plataforma e realizei testes automatizados com Espresso. Além disso, tive contato diário com Git, arquitetura MVVM e Kotlin.'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('HARD SKILLS', style: kTitleStyle),
                        Text('SOFT SKILLS', style: kTitleStyle),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: kBoxDecoration,
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text('Kotlin'),
                                Text('descrição'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Container(
                            decoration: kBoxDecoration,
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text('fofa'),
                                Text('descrição'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Text('Idiomas', style: kTitleStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: kBoxDecoration,
                              padding: EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Text('Inglês'),
                                  Text('nível'),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Container(
                              decoration: kBoxDecoration,
                              padding: EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Text('Português'),
                                  Text('nível'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: kBoxDecoration,
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text('Educação', style: kTitleStyle),
                            Text('Design de Games'),
                            Text('descrição'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
