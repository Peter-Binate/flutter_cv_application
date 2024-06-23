import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expériences'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            experienceItem(
              'Publications Agora',
              'images/agora.jpg',
              'Développeur Front-end',
              'Création de landing page, automatisation d\'email.',
              'Gestion de bon de commmande',
            ),
            experienceItem(
              'Blink',
              'images/logoBleu.png',
              'Développeur web full-stack',
              'Développement d\'une application mobile en React-Native et Adonis.js. ',
              'Il s\'agit d\'une application d\'une mise en relation entre personne aveugle et personne volontaire .',
            ),
            experienceItem(
              'Locasmart',
              'images/locasmart.png',
              'Développeur web',
              'Développement d\'une application web de mise en relation entre propriétaire et locataire',
              'Ce projet est réalisé en Next.js et Django.',
            ),
          ],
        ),
      ),
    );
  }

  Widget experienceItem(String company, String logoPath, String title,
      String description, String additionalInfo) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset(
                  logoPath,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      company,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(description,
                    style: const TextStyle(fontSize: 16, color: Colors.white)),
                if (additionalInfo.isNotEmpty) ...[
                  const SizedBox(height: 5),
                  Text(additionalInfo,
                      style:
                          const TextStyle(fontSize: 16, color: Colors.white)),
                ],
              ],
            ),
          ),
          const Divider(
            height: 30,
            thickness: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
