import 'package:flutter/material.dart';

class TaskBarTextButton extends StatelessWidget {
  const TaskBarTextButton({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
