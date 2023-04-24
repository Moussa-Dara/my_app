// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        centerTitle: true,
        title: Text('C A R L O C'),
      ),
      bottomNavigationBar: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.green,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            onTabChange: (index){
              print(index);
            },
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Accueil',
                ),
              GButton(
                icon: Icons.person,
                text: 'Chercher',
                ),
            ],
          ),
        ),
      ),
    );
  }
}