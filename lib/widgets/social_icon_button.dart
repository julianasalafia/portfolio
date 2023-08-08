import 'package:curriculum_flutter/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIconButton extends StatelessWidget {
  SocialIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.iconSize,
  }) : super(key: key);

  final void Function() onPressed;
  final IconData icon;
  double? iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: FaIcon(
        icon,
        size: iconSize ?? iconSmall,
      ),
    );
  }
}
