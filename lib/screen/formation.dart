import 'package:flutter/material.dart';

class FormationScreen extends StatelessWidget {
  const FormationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formation'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            educationItem(
              'My Digital School',
              'images/mds.png',
              'Bachelor 3 - Concepteurs développeurs d\'applications',
            ),
            educationItem(
              'Dut Métier du Multimédia et de l\'Internet',
              'images/mmi.png',
              ' 1 Diplôme national de l\'enseignement supérieur, le BUT se prépare en 3 ans après le bac en IUT (institut universitaire de technologie), à temps plein ou en apprentissage.',
            ),
          ],
        ),
      ),
    );
  }

  Widget educationItem(String institution, String logoPath, String details) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                logoPath,
                width: 50,
                height: 50,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      institution,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      details,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
