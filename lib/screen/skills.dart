import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Si je souhaite utiliser une image en ligne en enlever le const
    return  SingleChildScrollView(
      padding: EdgeInsets.all(30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Text("Skills"),
        ],
      ),
    );
  }
}