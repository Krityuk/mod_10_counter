// ignore_for_file: camel_case_types, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:turn_page_transition/turn_page_transition.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

const colorizeColors = [
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
];

const colorizeColorsAccountDatabase = [
  Color.fromARGB(255, 6, 50, 59),
  Color.fromARGB(255, 77, 7, 2),
  Color.fromARGB(255, 14, 93, 157),
  Color.fromARGB(255, 24, 22, 4),
  Color.fromARGB(255, 31, 9, 35),
  Color.fromARGB(255, 11, 5, 55),
  Color.fromARGB(255, 4, 48, 83),
  Colors.black,
  Color.fromARGB(255, 6, 50, 59),
  Color.fromARGB(255, 77, 7, 2),
  Color.fromARGB(255, 16, 89, 148),
  Color.fromARGB(255, 24, 22, 4),
  Color.fromARGB(255, 31, 9, 35),
  Color.fromARGB(255, 11, 5, 55),
  Color.fromARGB(255, 4, 48, 83),
  Colors.black,
  Color.fromARGB(255, 6, 50, 59),
  Color.fromARGB(255, 77, 7, 2),
  Colors.blue,
  Color.fromARGB(255, 24, 22, 4),
  Color.fromARGB(255, 31, 9, 35),
  Color.fromARGB(255, 11, 5, 55),
  Color.fromARGB(255, 4, 48, 83),
  Colors.black,
];
const colorizeColors2 = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
    fontSize: 35.0,
    fontFamily: 'Pacifico',
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
        color: Colors.white,
        blurRadius: 15,
        offset: Offset(0, 3),
      ),
    ]);

const colorizeTextStyle3 =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
const colorizeTextStyle32 =
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
const colorizeTextStyle2 =
    TextStyle(fontSize: 25.0, fontFamily: 'Lato', fontWeight: FontWeight.bold);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

// ignore_for_file: avoid_print, use_build_context_synchronously

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // late final AnimationController _controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: SweepGradient(colors: [
        Colors.pink,
        Colors.red,
        Colors.orange,
        Colors.yellow,
        Colors.green,
        Colors.blue,
        Colors.indigo,
        Colors.deepPurple,
      ])),
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // decoration: const BoxDecoration(
            //     color: Colors.grey,
            //     image: DecorationImage(
            //         image: AssetImage('images/wsx.png'), fit: BoxFit.fill)),
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: const AssetImage(
                        //
                        'images/stars.gif',
                      ),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2),
                        BlendMode.darken,
                      ),
                    )),
                child: Column(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height * 0.3,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                'COMPUTER ORGANISATION AND ARCHITECTURE',
                                textStyle: colorizeTextStyle,
                                colors: colorizeColors,
                              ),
                              ColorizeAnimatedText(
                                'MOD 10 COUNTER',
                                textStyle: colorizeTextStyle,
                                colors: colorizeColors,
                              ),
                            ],
                            isRepeatingAnimation: true,
                            // onTap: () {
                            //   print("Tap Event");
                            //   final assetsAudioPlayer = AssetsAudioPlayer();
                            //   assetsAudioPlayer.open(
                            //     Audio('images/welcome.mp3'),
                            //   );
                            // },
                          ),
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height * 0.7,
                      left: 10,
                      right: 10,
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              final assetsAudioPlayer = AssetsAudioPlayer();
                              assetsAudioPlayer.open(
                                Audio('images/welcome.mp3'),
                              );

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const page1()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 32),
                                side: const BorderSide(width: 5),
                                backgroundColor:
                                    const Color.fromARGB(255, 211, 83, 83),
                                shape: const BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(13)),
                                )),
                            child: const Text(
                              'START',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      )),
                ])),
          ),
        ),
      ),
    );
  }
}

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('images/Slide1.JPG'), fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.627,
                    right: MediaQuery.of(context).size.width * 0.102,
                    top: MediaQuery.of(context).size.height * 0.649,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.132,
                        width: MediaQuery.of(context).size.width * 0.32,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page2(),
                                ),
                              );
                            },
                            child: const Text('Push')),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.044,
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.192,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page1(),
                                ),
                              );
                            },
                            child: const Text('Reset')),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('images/Slide2.JPG'), fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.627,
                    right: MediaQuery.of(context).size.width * 0.102,
                    top: MediaQuery.of(context).size.height * 0.649,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.132,
                        width: MediaQuery.of(context).size.width * 0.32,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page3(),
                                ),
                              );
                            },
                            child: const Text('Push')),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.044,
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.192,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 100,
                              // fixedSize: Size(600, 400),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page1(),
                                ),
                              );
                            },
                            child: const Text('Reset')),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('images/Slide3.JPG'), fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.627,
                    right: MediaQuery.of(context).size.width * 0.102,
                    top: MediaQuery.of(context).size.height * 0.649,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.132,
                        width: MediaQuery.of(context).size.width * 0.32,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page4(),
                                ),
                              );
                            },
                            child: const Text('Push')),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.044,
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.192,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 100,
                              // fixedSize: Size(600, 400),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page1(),
                                ),
                              );
                            },
                            child: const Text('Reset')),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('images/Slide4.JPG'), fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.627,
                    right: MediaQuery.of(context).size.width * 0.102,
                    top: MediaQuery.of(context).size.height * 0.649,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.132,
                        width: MediaQuery.of(context).size.width * 0.32,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page5(),
                                ),
                              );
                            },
                            child: const Text('Push')),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.044,
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.192,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page1(),
                                ),
                              );
                            },
                            child: const Text('Reset')),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class page5 extends StatefulWidget {
  const page5({super.key});

  @override
  State<page5> createState() => _page5State();
}

class _page5State extends State<page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('images/Slide5.JPG'), fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.627,
                    right: MediaQuery.of(context).size.width * 0.102,
                    top: MediaQuery.of(context).size.height * 0.649,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.132,
                        width: MediaQuery.of(context).size.width * 0.32,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page6(),
                                ),
                              );
                            },
                            child: const Text('Push')),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.044,
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.192,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 100,
                              // fixedSize: Size(600, 400),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page1(),
                                ),
                              );
                            },
                            child: const Text('Reset')),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class page6 extends StatefulWidget {
  const page6({super.key});

  @override
  State<page6> createState() => _page6State();
}

class _page6State extends State<page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('images/Slide6.JPG'), fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.627,
                    right: MediaQuery.of(context).size.width * 0.102,
                    top: MediaQuery.of(context).size.height * 0.649,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.132,
                        width: MediaQuery.of(context).size.width * 0.32,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page7(),
                                ),
                              );
                            },
                            child: const Text('Push')),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.044,
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.192,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 100,
                              // fixedSize: Size(600, 400),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page1(),
                                ),
                              );
                            },
                            child: const Text('Reset')),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class page7 extends StatefulWidget {
  const page7({super.key});

  @override
  State<page7> createState() => _page7State();
}

class _page7State extends State<page7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('images/Slide7.JPG'), fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.627,
                    right: MediaQuery.of(context).size.width * 0.102,
                    top: MediaQuery.of(context).size.height * 0.649,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.132,
                        width: MediaQuery.of(context).size.width * 0.32,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page8(),
                                ),
                              );
                            },
                            child: const Text('Push')),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.044,
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.192,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 100,
                              // fixedSize: Size(600, 400),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page1(),
                                ),
                              );
                            },
                            child: const Text('Reset')),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class page8 extends StatefulWidget {
  const page8({super.key});

  @override
  State<page8> createState() => _page8State();
}

class _page8State extends State<page8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('images/Slide8.JPG'), fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.627,
                    right: MediaQuery.of(context).size.width * 0.102,
                    top: MediaQuery.of(context).size.height * 0.649,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.132,
                        width: MediaQuery.of(context).size.width * 0.32,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page9(),
                                ),
                              );
                            },
                            child: const Text('Push')),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.044,
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.192,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 100,
                              // fixedSize: Size(600, 400),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page1(),
                                ),
                              );
                            },
                            child: const Text('Reset')),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class page9 extends StatefulWidget {
  const page9({super.key});

  @override
  State<page9> createState() => _page9State();
}

class _page9State extends State<page9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('images/Slide9.JPG'), fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.627,
                    right: MediaQuery.of(context).size.width * 0.102,
                    top: MediaQuery.of(context).size.height * 0.649,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.132,
                        width: MediaQuery.of(context).size.width * 0.32,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page10(),
                                ),
                              );
                            },
                            child: const Text('Push')),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.044,
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.192,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 100,
                              // fixedSize: Size(600, 400),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page1(),
                                ),
                              );
                            },
                            child: const Text('Reset')),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class page10 extends StatefulWidget {
  const page10({super.key});

  @override
  State<page10> createState() => _page10State();
}

class _page10State extends State<page10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('images/Slide10.JPG'), fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.627,
                    right: MediaQuery.of(context).size.width * 0.102,
                    top: MediaQuery.of(context).size.height * 0.649,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.132,
                        width: MediaQuery.of(context).size.width * 0.32,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page1(),
                                ),
                              );
                            },
                            child: const Text('Push')),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.044,
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.192,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 100,
                              // fixedSize: Size(600, 400),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: Colors.blue, width: 4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TurnPageRoute(
                                  overleafColor: Colors.grey,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => const page1(),
                                ),
                              );
                            },
                            child: const Text('Reset')),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
