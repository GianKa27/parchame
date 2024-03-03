import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 16,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person_sharp,
                color: Colors.black87,
              ),
            )
          ],
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 210,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        // Colors.white, Colors.grey
                        // Colors.green,
                        Colors.yellow,
                        Colors.amber,
                        Colors.orange,
                        Colors.deepOrange,
                        // Colors.red,
                        // Colors.pink,
                        // Colors.purple,
                        // Colors.indigo,
                        // Colors.blue
                      ]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'No tengo plan...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '🤔',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_rounded,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        physics: const BouncingScrollPhysics(parent: ScrollPhysics()),
        children: [
          const SizedBox(
            height: 20,
          ),
          Transform.rotate(
            angle: pi * -0.05,
            child: const Text(
              '¿Plan para este FDS? 🎉',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CardEstablecimientos(),
          // Container(
          //   margin: const EdgeInsets.symmetric(vertical: 10),
          //   height: 400,
          //   decoration: BoxDecoration(
          //       color: Colors.white, borderRadius: BorderRadius.circular(20)),
          //   child: SizedBox.expand(),
          // ),
          // Container(
          //   margin: const EdgeInsets.symmetric(vertical: 10),
          //   height: 400,
          //   decoration: BoxDecoration(
          //       color: Colors.white, borderRadius: BorderRadius.circular(20)),
          //   child: SizedBox.expand(),
          // ),
        ],
      ),
    );
  }
}

class CardEstablecimientos extends StatelessWidget {
  const CardEstablecimientos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2)),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Iroka Bar',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              size: 22,
                              color: Colors.amber,
                            ),
                            Text('3.9')
                          ],
                        ),
                        Text(
                          'Cañaveral, Floridablanca',
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 5),
                            Text('3 km')
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     Icon(
                        //       Icons.battery_full,
                        //       color: Colors.green,
                        //     ),
                        //     Icon(
                        //       Icons.battery_full,
                        //       color: Colors.orange,
                        //     ),
                        //     Icon(
                        //       Icons.battery_full,
                        //       color: Colors.deepOrange,
                        //     ),
                        //     Icon(
                        //       Icons.battery_full,
                        //       color: Colors.red,
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 234, 233, 233),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTW5S3uptge_DACfhzMO4BfP6td-jyTjeVztbqB4f0UQ&s',
                                          fit: BoxFit.scaleDown,
                                        ),
                                        const Positioned(
                                            bottom: 10,
                                            left: 0,
                                            right: 0,
                                            child: Icon(
                                              Icons.fullscreen_rounded,
                                              color: Colors.white,
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              // Expanded(
              //   child: Container(
              //     margin: EdgeInsets.only(top: 10),
              //     decoration: BoxDecoration(
              //         color: Color.fromARGB(255, 234, 233, 233),
              //         borderRadius: BorderRadius.circular(20)),
              //     child: Row(
              //       children: [
              //         Expanded(
              //             child: PageView(
              //           children: [
              //             Image.network(
              //               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTW5S3uptge_DACfhzMO4BfP6td-jyTjeVztbqB4f0UQ&s',
              //               fit: BoxFit.scaleDown,
              //             ),
              //             Image.network(
              //               'https://img.restaurantguru.com/r58d-IROKA-BUD-BAR-CABECERA-interior.jpg',
              //               fit: BoxFit.scaleDown,
              //             ),
              //             Image.network(
              //               'https://img.restaurantguru.com/r039-IROKA-BUD-BAR-CABECERA-design.jpg',
              //               fit: BoxFit.scaleDown,
              //             ),
              //             Image.network(
              //               'https://weekend-bucket.s3.amazonaws.com/Iroka_4_3ce1d2dc18.jpg',
              //               fit: BoxFit.scaleDown,
              //             ),
              //           ],
              //         ))
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
        Positioned(
          top: 5,
          left: -10,
          child: Transform.rotate(
            angle: pi * -0.1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 20,
              width: 80,
              decoration: const BoxDecoration(color: Colors.red, boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 112, 18, 11),
                    blurRadius: 3,
                    offset: Offset(-1, 4))
              ]),
              child: const Text(
                'Nuevo',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
