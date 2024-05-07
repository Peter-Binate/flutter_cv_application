import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.blue,
            child: Center(
              child: const Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30), // Ajoute un marginTop de 20 pixels
                    child: Text("Peter Binate", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                const Row(
                  children: <Widget>[
                    Icon(Icons.mail),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text("peter.binate@gmail.com"),
                      ],
                    ),
                  ],  
                ), 
                SizedBox(height: 10),
                const Row(
                  children: <Widget>[
                    Icon(Icons.phone),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text("01 02 03 04 05"),
                      ],
                    ),
                  ],  
                ),
                SizedBox(height: 10), 
                const Row(
                  children: <Widget>[
                    Icon(Icons.location_city),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text("peter.binate@gmail.com"),
                      ],
                    ),
                  ],  
                ),
                SizedBox(height: 10), 
                const Row(
                  children: <Widget>[
                    Icon(Icons.web_sharp),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text("peter.binate@gmail.com"),
                      ],
                    ),
                  ],  
                ),
                SizedBox(height: 10), 
                const Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text("peter.binate@gmail.com"),
                      ],
                    ),
                  ],  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
