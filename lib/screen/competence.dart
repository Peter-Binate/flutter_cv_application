import 'package:flutter/material.dart';

class CompetenceScreen extends StatelessWidget {
  const CompetenceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compétence'),
        backgroundColor:
            Colors.deepPurple, // Changez la couleur de l'app bar si nécessaire
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text('Front-end',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('images/react.png', 'React'),
                  listImage('images/html.png', 'HTML5'),
                  listImage('images/js.png', 'JavaScript'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Back-end',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('images/postgre.png', 'Postgre'),
                  listImage('images/mysql.png', 'Mysql.js'),
                  listImage('images/nodejs.png', 'Node.js'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Mobile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('images/react.png', 'React'),
                  listImage('images/flutter.png', 'Flutter'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listImage(String source, String label) {
    return Container(
      width: 90,
      height: 90,
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Image.asset(
            source,
            width: 50,
            height: 50,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
