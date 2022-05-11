import 'package:flutter/material.dart';
import 'menu.dart';
import 'about.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int _currentIndex = 0;

   final screens = [
    MenuPage(),
    About(),
  ];

   void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red, 
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
            backgroundColor: Colors.black, 
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        ),
    );
  }
}
