import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infos +'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            infoItem(
              'Film',
              'images/film.jpg',
              'J\'aime les films de sciences-fiction et les blockbusters.',
            ),
            const SizedBox(height: 20),
            infoItem(
              'Jeux video',
              'images/jeuxvideo.jpg',
              'J\'aime les jeux vidéos de plateform et les mmorpg tel que World of Warcraft',
            ),
          ],
        ),
      ),
    );
  }

  Widget infoItem(String title, String imagePath, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(fontSize: 16),
        ),
        const Divider(
          height: 30,
          thickness: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}
