import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../constants.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage('assets/images/background.jpg'),
          //   fit: BoxFit.cover,
          // ),
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [Text('')],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 50.0,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [kPinkPantone, kLicorice]),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                        child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.windows,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            // border: Border.all(
                            //   color: kLightCrimson,
                            //   width: 3.0,
                            // ),
                            ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 45,
                              height: 45,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'POR',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 5),
                              child: VerticalDivider(
                                color: Colors.white,
                                thickness: 0.3,
                              ),
                            ),
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
                            ),
                            SizedBox(width: 15),
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
