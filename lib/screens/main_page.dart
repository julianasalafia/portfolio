import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

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
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kLightCrimson,
                            width: 3.0,
                          ),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FontAwesomeIcons.github,
                                size: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FontAwesomeIcons.linkedinIn,
                                size: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FontAwesomeIcons.behance,
                                size: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FontAwesomeIcons.link,
                                size: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              DateFormat('h:mm a \ndd/MM/yyyy')
                                  .format(DateTime.now()),
                            )
                          ],
                        )),
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
