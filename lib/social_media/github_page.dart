import 'package:curriculum_flutter/shared/app_colors.dart';
import 'package:curriculum_flutter/shared/constants.dart';
import 'package:flutter/material.dart';

class GithubPage extends StatefulWidget {
  const GithubPage({super.key});

  @override
  State<GithubPage> createState() => _GithubPageState();
}

class _GithubPageState extends State<GithubPage> {
  double xPosition = 0;
  double yPosition = 0;

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
            child: Column(
              children: [
                Container(
                  width: 500,
                  height: navTaskBarHeight,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: AppColors.degrade,
                    ),
                  ),
                  child: Row(),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  width: 500,
                  height: 450,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
