import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../shared/app_colors.dart';
import '../shared/constants.dart';
import '../widgets/main_divider.dart';
import '../widgets/social_icon_button.dart';
import '../widgets/task_bar_text_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Expanded(
              child: Column(
                children: [Text('')],
              ),
            ),
            Column(
              children: [
                Container(
                  height: taskBarHeight,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: AppColors.degrade),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                        child: SocialIconButton(
                          icon: FontAwesomeIcons.windows,
                          iconSize: iconHuge,
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: sizedBoxWidth),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            const TaskBarTextButton(buttonText: languageButton),
                            const MainDivider(),
                            SocialIconButton(
                              icon: FontAwesomeIcons.github,
                              onPressed: () {},
                            ),
                            const SizedBox(width: sizedBoxWidth),
                            SocialIconButton(
                              icon: FontAwesomeIcons.linkedinIn,
                              onPressed: () {},
                            ),
                            const SizedBox(width: sizedBoxWidth),
                            SocialIconButton(
                              icon: FontAwesomeIcons.behance,
                              onPressed: () {},
                            ),
                            const SizedBox(width: sizedBoxWidth),
                            SocialIconButton(
                              icon: FontAwesomeIcons.link,
                              onPressed: () {},
                            ),
                            const SizedBox(width: sizedBoxWidth),
                            Text(
                              DateFormat(dateFormat).format(DateTime.now()),
                            ),
                            const SizedBox(width: paddingRight),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
