import 'package:flutter/material.dart';
import 'package:fluttertest/pages/widgets/BoxesWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  _HomeComponentState createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      Image.asset(
        'assets/images/background.png',
        fit: BoxFit.fitHeight,
      ),
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.black.withOpacity(0.7),
              Colors.transparent,
              Colors.transparent,
              Colors.black
            ],
                stops: const [
              .0,
              0.4,
              0.5,
              .6
            ])),
      ),
      Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Center(
                      child: Text(
                        'Stroll Bonfire',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(185, 180, 245, 1)),
                            fontSize: 35,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 95),
                    child: Center(
                        child: Row(
                      children: [
                        const Icon(
                          Icons.alarm,
                          color: Colors.white,
                        ),
                        Text(
                          ' 22m 00m',
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(color: Colors.white),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          width: 10,
                        ),
                        const Icon(
                          Icons.person_2_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          ' 103',
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(color: Colors.white),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 210,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/Photo.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Angelina, 28',
                              style: GoogleFonts.montserrat(
                                  textStyle:
                                      const TextStyle(color: Colors.white),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'What is your favorite time of the day?',
                              style: GoogleFonts.montserrat(
                                  textStyle:
                                      const TextStyle(color: Colors.white),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    '"Mine is definetely the peace in the morning"',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.white, fontStyle: FontStyle.italic),
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      BoxesWidget(
                        text: 'The peace in the early mornings',
                        image: 'assets/images/aletter.png',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      BoxesWidget(
                        text: 'The magical golden hours',
                        image: 'assets/images/bletter.png',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      BoxesWidget(
                        text: 'Wind down time after dinner',
                        image: 'assets/images/cletter.png',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      BoxesWidget(
                        text: 'The serenity pass midnight',
                        image: 'assets/images/cletter.png',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pick your option.',
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(color: Colors.white),
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'See who has a similar mind',
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(color: Colors.white),
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 88,
                      ),
                      Image.asset('assets/images/mic.png'),
                      Image.asset('assets/images/arrow.png'),
                    ],
                  )
                ],
              )
            ],
          ))
    ]);
  }
}
