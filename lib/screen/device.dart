// screen/device.dart
//

//import "package:cv/screen/competence.dart";
import 'package:flutter/material.dart';

import 'competence.dart';
import 'experience.dart';
import 'formation.dart';
import 'info.dart';
import 'profil.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 0;
  final List<Widget> _screenList = const [
    ProfilScreen(),
    ExperienceScreen(),
    FormationScreen(),
    CompetenceScreen(),
    InfoScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.white,
          currentIndex: _currentScreen,
          onTap: onTabTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profil'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance,
                ),
                label: 'Experience'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.school,
                ),
                label: 'Formation'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.memory,
                ),
                label: 'Compétence'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.info,
                ),
                label: 'Infos'),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
