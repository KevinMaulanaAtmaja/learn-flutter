import 'package:flutter/material.dart';

class ColRow extends StatelessWidget {
  const ColRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 25, //utk kasih jarak antar widget
        children: [
          Text("Hello"),
          Row(
            spacing: 10, //utk kasih jarak antar widget
            children: [
              Text("Row1"),
              Text("Row2"),
              Text("Row3"),
            ],
          ),
          Text("Hello World!"),
          Text("World"),
        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly, //atur children scra vertikal
      //   crossAxisAlignment: CrossAxisAlignment.end, //atur children scra horizontal
      //   children: [
      //     Text("Hello"),
      //     Text("Hello World!"),
      //     Text("World"),
      //   ],
      // ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround, //atur children scra horizontal
      //   crossAxisAlignment: CrossAxisAlignment.start, //atur children scra vertikal
      //   children: [
      //     Text("Halo"),
      //     Text("Halo Dunia! \n test \n yahuu"),
      //     Text("Dunia"),
      //   ],
      // ),
    );
  }
}
