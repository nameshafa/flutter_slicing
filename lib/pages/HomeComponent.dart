import 'package:flutter/material.dart';
import 'package:fluttertest/pages/widgets/BoxesWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        fit: BoxFit.fitWidth,
        alignment: Alignment.topCenter,
      ),
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.black.withOpacity(0.5),
              Colors.transparent,
              Colors.transparent,
              Colors.black
            ],
                stops: const [
              .0,
              0.2,
              0.49,
              .6
            ])),
      ),
      Padding(
          padding: const EdgeInsets.only(left: 18, right: 18, top: 29),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 15,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Stroll Bonfire',
                        style: TextStyle(
                          fontFamily: 'Proxima',
                          color: const Color.fromRGBO(204, 200, 255, 1),
                          shadows: [
                            Shadow(
                              blurRadius: 19.0,
                              color: Color.fromARGB(255, 93, 93, 93),
                              offset: Offset(1, 1),
                            ),
                            // font size and color of the text
                          ],
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        width: 5,
                      ),
                      Image.asset('assets/images/downside-arrow.png'),
                    ],
                  ),
                  Container(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/clock-1.png',
                          width: 10, height: 10),
                      Container(
                        width: 3.27,
                      ),
                      const Text('22h 00m',
                          style: TextStyle(
                              fontFamily: 'Proxima',
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                      Container(
                        width: 9.73,
                      ),
                      Image.asset('assets/images/person-1.png',
                          width: 10, height: 10),
                      Container(
                        width: 4.24,
                      ),
                      const Text(
                        '103',
                        style: TextStyle(
                            fontFamily: 'Proxima',
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 7.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/photo-2.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                SizedBox(
                                  height: 24,
                                ),
                                Text(
                                  'Angelina, 28',
                                  style: TextStyle(
                                      fontFamily: 'Proxima',
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 5, right: 23),
                                    child: Text(
                                        'What is your favorite time of the day?',
                                        style: TextStyle(
                                            fontFamily: 'Proxima',
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700))),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      const Text(
                          '"Mine is definitely the peace in the morning."',
                          style: TextStyle(
                              fontFamily: 'Proxima',
                              color: Color.fromRGBO(203, 201, 255, 0.7),
                              fontSize: 12,
                              fontStyle: FontStyle.italic)),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          BoxesWidget(
                            text: 'The peace in the early mornings',
                            image: 'assets/images/a-letter.svg',
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          BoxesWidget(
                            text: 'The magical golden hours',
                            image: 'assets/images/b-letter.svg',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          BoxesWidget(
                            text: 'Wind-down time after dinners',
                            image: 'assets/images/c-letter.svg',
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          BoxesWidget(
                            text: 'The serenity past midnight.',
                            image: 'assets/images/d-letter.svg',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Pick your option.',
                                  style: TextStyle(
                                      fontFamily: 'Proxima',
                                      color: Color.fromRGBO(229, 229, 229, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'See who has a similar mind.',
                                  style: TextStyle(
                                      fontFamily: 'Proxima',
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/mic-button.svg',
                                height: 48,
                                width: 48,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              SvgPicture.asset(
                                'assets/images/left-arrow.svg',
                                height: 48,
                                width: 48,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ))
    ]);
  }
}
