import 'package:flutter/material.dart';

class SizedBoxs extends StatelessWidget {
  const SizedBoxs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // knp ga pake container aja? kan sama aja!
          // karna biar hemat memo, SizedBox cuma punya 2 named param, container bnyk param
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Text("Hello.. My name is Kevin Maulana Atmaja"),
            ),

            SizedBox(height: 20),

            SizedBox(width: 100, height: 100, child: Text("And I'm 19th yo")),

            // tdk rekomend pake container utk kasih jarak
            // Container(
            //   color: Colors.blue,
            //   width: 100,
            //   height: 100,
            //   child: Text("And I'm 19th yo"),
            // ),
          ],
        ),
      ),
    );
  }
}
