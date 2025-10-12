import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontTypes extends StatelessWidget {
  const FontTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 40,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              child: Text(
                "Hello My name is Amelia and I'm 6th yo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "ComicNue",
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: Text(
                "Hello My name is Dina and I'm 16th yo",
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoMono(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  // fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
