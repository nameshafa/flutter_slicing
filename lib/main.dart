import 'package:flutter/material.dart';
import 'package:fluttertest/pages/HomeComponent.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<HomePage> {
  int selectedIndex = 0;
  final widgetOptions = [
    const Text('Beer List'),
    const Text('Add new beer'),
    const Text('Favourites'),
    const Text('User')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: HomeComponent(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.deepPurple,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: 'one', icon: Image.asset('assets/images/poke-card.png')),
          BottomNavigationBarItem(
              label: 'two', icon: Image.asset('assets/images/Vector.png')),
          BottomNavigationBarItem(
              label: 'three', icon: Image.asset('assets/images/Icons.png')),
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
