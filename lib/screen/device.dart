import 'package:flutter/material.dart';
import 'profil.dart';
import 'experience.dart';
import 'formation.dart';
import 'skills.dart';
import 'info.dart';

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentIndex = 0;
  final List<Widget> _screenList = [
    ProfilScreen(),
    ExperienceScreen(),
    FormationScreen(),
    SkillsScreen(),
    InfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: onTapTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Expérience'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Formation'),
          BottomNavigationBarItem(icon: Icon(Icons.memory), label: 'Compétences'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Infos+'),
        ],
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

