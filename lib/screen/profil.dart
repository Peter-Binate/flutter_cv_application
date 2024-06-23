import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.deepPurple,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Peter binate',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ClipOval(
                    child: Image.asset(
                      'images/peter.jpg', // Assurez-vous que le chemin est correct
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => _launchURL(
                              'https://www.linkedin.com/in/Peter-binate-337968249'),
                          child: Image.asset(
                            'images/linkedin.png', // Votre image pour LinkedIn
                            width: 40,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () =>
                              _launchURL('https://github.com/Peter-Binate'),
                          child: Image.asset(
                            'images/github.png', // Votre image pour GitHub
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 65, 14, 86),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.mail, color: Colors.white),
                        SizedBox(width: 10),
                        Text('peter.binate@gmail.com',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.white),
                        SizedBox(width: 10),
                        Text('0611111111',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.location_city, color: Colors.white),
                        SizedBox(width: 10),
                        Text('Ile de France',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.home, color: Colors.white),
                        SizedBox(width: 10),
                        Text('www.peterbinate.com',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.info, color: Colors.white),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Développeur web front-end (React.js)',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
