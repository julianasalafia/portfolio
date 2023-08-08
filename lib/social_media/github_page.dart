import 'package:curriculum_flutter/shared/app_colors.dart';
import 'package:curriculum_flutter/shared/constants.dart';
import 'package:curriculum_flutter/widgets/social_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GithubPage extends StatefulWidget {
  const GithubPage({super.key});

  @override
  State<GithubPage> createState() => _GithubPageState();
}

class _GithubPageState extends State<GithubPage> {
  double xPosition = 0;
  double yPosition = 0;

  double width = 500;
  double height = 450;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (tapInfo) {
        setState(() {
          xPosition += tapInfo.delta.dx;
          yPosition += tapInfo.delta.dy;
        });
      },
      child: Stack(
        children: [
          Positioned(
            left: xPosition,
            top: yPosition,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.kLicorice.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Container(
                      width: width,
                      height: navTaskBarHeight,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: AppColors.degrade,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SocialIconButton(
                            icon: FontAwesomeIcons.minus,
                            iconSize: 10.0,
                            onPressed: () {},
                          ),
                          SocialIconButton(
                            icon: FontAwesomeIcons.windowRestore,
                            iconSize: 10.0,
                            onPressed: () {},
                          ),
                          SocialIconButton(
                            icon: FontAwesomeIcons.xmark,
                            iconSize: 10.0,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    width: width,
                    height: height,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: xPosition + width - 10,
            top: yPosition,
            child: GestureDetector(
              onPanUpdate: (tapInfo) {
                setState(() {
                  width += tapInfo.delta.dx;
                });
              },
              child: Container(
                width: 20,
                height: height + navTaskBarHeight,
                color: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            left: xPosition,
            top: yPosition + height + navTaskBarHeight - 10,
            child: GestureDetector(
              onPanUpdate: (tapInfo) {
                setState(() {
                  height += tapInfo.delta.dy;
                });
              },
              child: Container(
                width: width,
                height: 20,
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
