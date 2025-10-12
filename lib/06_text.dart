import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 150,
          child: Text(
            "Hello My name is Kevin Maulana Atmaja and I'm 19th yo, (k3yvien)",
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              backgroundColor: Colors.blue,
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 5,
                  offset: Offset(3, 4),
                ),
              ],
              // letterSpacing: 5,
              // wordSpacing: 5,
              decoration: TextDecoration.underline,
              decorationThickness: 3,
              decorationColor: Colors.orange,
              decorationStyle: TextDecorationStyle.wavy
            ),
          ),
        ),
      ),
    );
  }
}
