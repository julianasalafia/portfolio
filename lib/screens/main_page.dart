import 'package:flutter/material.dart';

import '../constants.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [Text('cima')],
            ),
          ),
          Column(
            children: [
              Container(
                height: 50.0,
                color: kLicorice,
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kLightCrimson,
                            width: 3.0,
                          ),
                        ),
                        child: Text('teste')),
                    SizedBox(width: 10),
                    Container(
                        padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kLightCrimson,
                            width: 3.0,
                          ),
                        ),
                        child: Text('teste')),
                    SizedBox(width: 10),
                    Container(
                        padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kLightCrimson,
                            width: 3.0,
                          ),
                        ),
                        child: Text('teste')),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
