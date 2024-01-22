import 'package:flutter/material.dart';
import 'package:fluttertest/pages/HomeComponent.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        home: Scaffold(
      body: const HomeComponent(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
        unselectedItemColor: Colors.deepPurple,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: 'one', icon: Image.asset('assets/images/poke-card.png')),
          BottomNavigationBarItem(
            label: 'two',
            icon: Badge(
              backgroundColor: Colors.transparent,
              label: SvgPicture.asset(
                'assets/images/empty-badge.svg',
                semanticsLabel: 'My SVG Image',
              ),
              child: Image.asset('assets/images/Vector.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'three',
            icon: Badge(
              backgroundColor: Colors.transparent,
              label: SvgPicture.asset(
                'assets/images/ten-badge.svg',
                semanticsLabel: 'My SVG Image',
              ),
              child: Image.asset('assets/images/Icons.png'),
            ),
          ),
          BottomNavigationBarItem(
              label: 'three', icon: Image.asset('assets/images/User.png')),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.deepPurple,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 25.0,
        onTap: onItemTapped,
      ),
    ));
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
