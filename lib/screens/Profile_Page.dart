// ignore: file_names
import 'package:flutter/material.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});

  @override
  _Profile_PageState createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  final _formKey = GlobalKey<FormState>();

  String _numeroTelephone = '';
  String _nom = '';
  String _prenom = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  hintText: 'Nom',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer un nom';
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
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer un prénom';
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
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Envoi du formulaire
                    print('Numéro de téléphone : $_numeroTelephone');
                    print('Nom : $_nom');
                    print('Prénom : $_prenom');
                  }
                },
                child: const Text('Envoyer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
