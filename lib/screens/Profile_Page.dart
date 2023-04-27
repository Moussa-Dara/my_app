// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_app/screens/Inscription_Page.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});

  @override
  _Profile_PageState createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  final _formKey = GlobalKey<FormState>();

  String _numeroTelephone = '';
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 300, // Définir la largeur souhaitée pour votre formulaire
            padding: const EdgeInsets.all(16),
            child:
              Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 32), // Ajoute un petit espace entre le haut de l'écran et le texte "Se connecter"
              const Text(
                'SE CONNECTER',
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
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(width: 6), // Ajoute un petit espace entre le texte et le champ de numéro
                      Expanded( 
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Numéro de téléphone',
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
                    hintText: 'Mot de passe',
                  ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Ajoutez ici votre action lorsque l'utilisateur appuie sur "Mot de passe oublié?"
                      },
                      child: const Text(
                        'Mot de passe oublié?',
                        style: TextStyle(color:Colors.green,)
                        ),
                    ),
                  ],
                ), 
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Envoi du formulaire
                      print('Numéro de téléphone : $_numeroTelephone');
                      print('Mot de passe : $_password');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Changer la couleur du bouton
                    textStyle: const TextStyle(fontSize: 20),
                    minimumSize: const Size(100, 50), // Définir la taille minimale du bouton
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Définir le padding du bouton
                  ),
                  child: const Text('Connexion'),
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    GestureDetector(
                      child: const Text(
                        "Je n'ai pas de compte, m'inscrire",
                        style: TextStyle(
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Inscription_Page()),
                        );
                      },
                    ),

                    
                    SizedBox(height: 16), // Ajoute un petit espace sous le texte
                  ],
                ),
              ],
            )
          ),
          
        )
      ),)
    );
  }
}
