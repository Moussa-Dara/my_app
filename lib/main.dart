import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            // ignore: prefer_const_constructors
            title: Text(
              'CarLoc',
              style: GoogleFonts.satisfy(textStyle: TextStyle(fontSize: 35), color: Colors.black) ,
            ),
            
          ),
        //Naviguer entre les pages
        body: const [ Home_Page(), Search_Page(), Profile_Page()][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) => setCurrentIndex(index),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.amberAccent,
            unselectedItemColor: Colors.black,
            mouseCursor: SystemMouseCursors.grab,
            backgroundColor: Colors.blue,
            iconSize: 25,
            elevation: 10,
            selectedFontSize: 12,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Accueil',),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Chercher',),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profil',),
            ]),
      ),
    );
  }
}
