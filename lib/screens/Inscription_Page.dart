import 'package:flutter/material.dart';

class Inscription_Page extends StatefulWidget {
  const Inscription_Page({super.key});

  @override
  State<Inscription_Page> createState() => _Inscription_PageState();
}

class _Inscription_PageState extends State<Inscription_Page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("La page d'inscription"),
      ),
    );
  }
}