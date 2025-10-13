import 'package:flutter/material.dart';

class Aligns extends StatelessWidget {
  const Aligns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Align Widget")),
      body: Align(
        // alignment: Alignment.center,
        // alignment: Alignment.bottomLeft,
        // alignment: Alignment.topRight,
        // alignment: Alignment(0, 0),
        // alignment: Alignment(-1, 0),
        alignment: Alignment(-0.5, -1),
        child: SizedBox(
          width: 300,
          child: Text(
            "Hello What's up? My name is Kevin Maulana Atmaja, Sometimes Coding, Anime, Chess & History Enjoyer",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
