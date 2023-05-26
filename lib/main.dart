import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(page1());
}

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  int score_system = 0;
  int score_person = 0;
  int score_person2 = 6;
  int image_number = Random().nextInt(3) + 1;
  int image_number2 = Random().nextInt(3) + 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFF060a47),
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 34, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.symmetric(vertical: 32),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 5)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "RPS Game",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          "$score_person",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            if (score_person <= score_person2) {
                              setState(() {
                                image_number2 = Random().nextInt(3) + 1;
                                image_number = Random().nextInt(3) + 1;
                                if (image_number == 2 && image_number2 == 1 ||
                                    image_number == 3 && image_number2 == 2 ||
                                    image_number == 1 && image_number2 == 3) {
                                  score_system++;
                                }
                                if (image_number == 1 && image_number2 == 2 ||
                                    image_number == 3 && image_number2 == 1) {
                                  score_person++;
                                }
                              });
                            }
                          },
                          child: Image.asset("assets/image$image_number.png"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "You",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        SizedBox(height: 50),
                      ],
                    )),
                    Text(
                      "Vs",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          "$score_system",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            if (score_system <= score_person2) {
                              setState(() {
                                image_number2 = Random().nextInt(3) + 1;
                                image_number = Random().nextInt(3) + 1;

                                if (image_number2 == 2 && image_number == 1 ||
                                    image_number2 == 3 && image_number == 2 ||
                                    image_number2 == 1 && image_number == 3) {
                                  score_person++;
                                }
                                if (image_number2 == 1 && image_number == 2 ||
                                    image_number2 == 3 && image_number == 1) {
                                  score_system++;
                                }
                              });
                            }
                          },
                          child: Image.asset("assets/image$image_number2.png"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "System",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        SizedBox(height: 50)
                      ],
                    )),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
