import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/main.dart';
import 'package:my_app/screens/Profile_Page.dart';

class Inscription_Page extends StatefulWidget {
  const Inscription_Page({super.key});

  @override
  State<Inscription_Page> createState() => _Inscription_PageState();
}

class _Inscription_PageState extends State<Inscription_Page> {
  final _formKey = GlobalKey<FormState>();

  String _numeroTelephone = '';
  String _nom = '';
  String _prenom = '';
  String _password = '';
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
              'C A R L O C',
              style: GoogleFonts.satisfy(textStyle: TextStyle(fontSize: 35), color: Colors.black) ,
            ),
            
          ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(16),
              child: 
                Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 32), // Ajoute un petit espace entre le haut de l'écran et le texte "Se connecter"
              const Text(
                "S'INSCRIRE",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32), // Ajoute un petit espace entre le texte "Se connecter" et le formulaire
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ const
                      Text( 
                        '+222 ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 6), // Ajoute un petit espace entre le texte et le champ de numéro
                      Expanded( 
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Numéro de téléphone',
                            suffixIcon: Icon(Icons.phone),
                            suffixIconColor: Colors.green,
                          ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez entrer un numéro de téléphone';
                        } else if (value.length != 8) {
                          return 'Le numéro de téléphone doit contenir 8 caractères';
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        setState(() {
                          _numeroTelephone = value;
                        });
                      },
                    ),)
                  ],
                ),

                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Nom',
                    suffixIcon: Icon(Icons.person),
                    suffixIconColor: Colors.green,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer votre nom';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      _nom = value;
                    });
                  },
                ),

                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Prénom',
                    suffixIcon: Icon(Icons.person),
                    suffixIconColor: Colors.green,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer votre prénom';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      _prenom = value;
                    });
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Mot de passe',
                    suffixIcon: Icon(Icons.lock),
                    suffixIconColor: Colors.green,
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer votre mot de passe';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                const SizedBox(height: 5),
                
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Envoi du formulaire
                      print('Numéro de téléphone : $_numeroTelephone');
                      print('Nom : $_nom');
                      print('Prénom : $_prenom');
                      print('Mot de passe : $_password');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Changer la couleur du bouton
                    textStyle: const TextStyle(fontSize: 20),
                    minimumSize: const Size(100, 50), // Définir la taille minimale du bouton
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Définir le padding du bouton
                  ),
                  child: const Text('Valider'),
                ),
              ],
            )
                ),
            )
            ),
        ),
      )
    );
  }
}