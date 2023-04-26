import 'package:flutter/material.dart';

import 'screens/Home_Page.dart';
import 'screens/Profile_Page.dart';
import 'screens/Search_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  //sauvegarder le nmr actu de la page 

  int _currentIndex = 0;

  //mettre a jour le nmr de page
  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          centerTitle: true,
          title:
            Text('C A R L O C', style: TextStyle(fontSize: 30, fontFamily: "Ysabeau")),
        ),
        //Naviguer entre les pages
        body: const [
          Home_Page(),
          Search_Page(),
          Profile_Page()
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 25,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Accueil'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Chercher'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
            ),
          ]
          ),
        ),
    );
  }
}