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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Juliana Salafia'),
              Text(
                  'Olá :) Sou a Juliana, desenvolvedora android, moro na cidade de Santos em São Paulo e atuo com desenvolvimento frontend mobile utilizando a linguagem Kotlin.'),
              Text('Contato'),
              InkWell(
                child: Text('email'),
                onTap: () =>
                    launchUrl(Uri.parse('mailto:juliana.salafia@gmail.com')),
              ),
              InkWell(
                child: Text('linkedin'),
                onTap: () => launchUrl(
                    Uri.parse('https://www.linkedin.com/in/julianasalafia/')),
              ),
              InkWell(
                child: Text('github'),
                onTap: () =>
                    launchUrl(Uri.parse('https://github.com/julianasalafia')),
              ),
              InkWell(
                child: Text('behance'),
                onTap: () =>
                    launchUrl(Uri.parse('https://www.behance.net/jssalafia')),
              ),
              Text('Experiência'),
              Text('Desenvolvedora Android @ Player’s Bank'),
              Text(
                  'Itaú Unibanco, São Paulo, Brazil – (Maio 2021 - Abril 2023)'),
              Text('descrição'),
              Text('Social Media / SEO Analyst'),
              Text(
                  'FD Comunicação - PR Games&Esports, Jundiaí, Brasil – (Agosto 2018 - Maio 2021'),
              Text('descrição'),
              Text('HARD SKILLS'),
              Text('Kotlin'),
              Text('descrição'),
              Text('SOFT SKILLS'),
              Text('fofa'),
              Text('descrição'),
              Text('Idiomas'),
              Text('Inglês'),
              Text('nível'),
              Text('Português'),
              Text('nível'),
              Text('Educação'),
              Text('Design de Games'),
              Text('descrição'),
            ],
          ),
        ),
      ),
    );
  }
}
