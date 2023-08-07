/*
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'old/old_constants.dart';

class CurriculumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Juliana Salafia';
    var titleDescription =
        'Olá :) Sou a Juliana, desenvolvedora android, moro na cidade de Santos em São Paulo e atuo com desenvolvimento frontend mobile utilizando a linguagem Kotlin.';
    var contactTitle = 'Contato';
    var emailTitle = 'email';
    var linkedinTitle = 'linkedin';
    var behanceTitle = 'behance';
    var experienceTitle = 'Experiência';
    var githubTitle = 'github';
    var jobTitle1 = 'Desenvolvedora Android @ Player’s Bank';
    var jobTitle2 = 'Social Media / SEO Analyst';
    var jobSubtitle1 =
        'Itaú Unibanco, São Paulo, Brazil – (Maio 2021 - Abril 2023)';
    var jobSubtitle2 =
        'FD Comunicação - PR Games&Esports, Jundiaí, Brasil – (Agosto 2018 - Maio 2021';
    var jobDescription1 =
        'Participei do desenvolvimento frontend Android em um projeto white label, onde lançamos o Player\'s Bank, um novo produto financeiro voltado para gamers menores de idade. Colaborei com a equipe de UX/UI na atualização do design system da plataforma e realizei testes automatizados com Espresso. Além disso, tive contato diário com Git, arquitetura MVVM e Kotlin.';
    var jobDescription2 =
        'Participei do desenvolvimento frontend Android em um projeto white label, onde lançamos o Player\'s Bank, um novo produto financeiro voltado para gamers menores de idade. Colaborei com a equipe de UX/UI na atualização do design system da plataforma e realizei testes automatizados com Espresso. Além disso, tive contato diário com Git, arquitetura MVVM e Kotlin.';
    var educationTitle = 'Educação';
    var graduationCourse = 'Design de Games';
    var graduationDescription = 'descrição';
    var languagesTitle = 'IDIOMAS';

    var firstLanguage = 'Inglês';
    var secondLanguage = 'Português';

    var firstLanguageLevel = 'nível';
    var secondLanguageLevel = 'nível';

    var hardSkillsTitle = 'HARD SKILLS';
    var softSkillsTitle = 'SOFT SKILLS';

    var skill1 = 'Kotlin';
    var skill1Description = 'descrição';
    var skill2 = 'fofa';
    var skill2Description = 'descrição';

    double sizedBoxWidth = 15.0;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(title, style: kTitleStyle),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: kBoxDecoration,
                          padding: EdgeInsets.all(12.0),
                          child: Text(titleDescription),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(contactTitle, style: kTitleStyle),
                  ),
                  Container(
                    decoration: kBoxDecoration,
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Text(emailTitle),
                          onTap: () => launchUrl(
                              Uri.parse('mailto:juliana.salafia@gmail.com')),
                        ),
                        InkWell(
                          child: Text(linkedinTitle),
                          onTap: () => launchUrl(Uri.parse(
                              'https://www.linkedin.com/in/julianasalafia/')),
                        ),
                        InkWell(
                          child: Text(githubTitle),
                          onTap: () => launchUrl(
                              Uri.parse('https://github.com/julianasalafia')),
                        ),
                        InkWell(
                          child: Text(behanceTitle),
                          onTap: () => launchUrl(
                              Uri.parse('https://www.behance.net/jssalafia')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(sizedBoxWidth),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(hardSkillsTitle, style: kTitleStyle),
                    ),
                    Expanded(
                      child: Container(
                        decoration: kBoxDecoration,
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text(skill1),
                            Text(skill1Description),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: sizedBoxWidth),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(softSkillsTitle, style: kTitleStyle),
                    ),
                    Expanded(
                      child: Container(
                        decoration: kBoxDecoration,
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text(skill2),
                            Text(skill2Description),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: sizedBoxWidth),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(languagesTitle, style: kTitleStyle),
                    ),
                    Expanded(
                      child: Container(
                        decoration: kBoxDecoration,
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text(firstLanguage),
                            Text(firstLanguageLevel),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: sizedBoxWidth),
                    Expanded(
                      child: Container(
                        decoration: kBoxDecoration,
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text(secondLanguage),
                            Text(secondLanguageLevel),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(experienceTitle, style: kTitleStyle),
                  ),
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
                              Text(jobTitle1, style: kSubtitleStyle),
                              Text(jobSubtitle1),
                              Text(jobDescription1),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: sizedBoxWidth),
                      Expanded(
                        child: Container(
                          decoration: kBoxDecoration,
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Text(jobTitle2, style: kSubtitleStyle),
                              Text(jobSubtitle2),
                              Text(jobDescription2),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(educationTitle, style: kTitleStyle),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: kBoxDecoration,
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Text(graduationCourse),
                              Text(graduationDescription),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
