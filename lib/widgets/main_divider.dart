import 'package:flutter/material.dart';

class MainDivider extends StatelessWidget {
  const MainDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: VerticalDivider(
        color: Colors.white,
        thickness: 0.3,
      ),
    );
  }
}
