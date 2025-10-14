import 'package:flutter/material.dart';

class Paddings extends StatelessWidget {
  const Paddings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding Widget"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 10, 0),
            color: Colors.amber,
            child: Text("Kevin"),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 10, 0),
            color: Colors.amber,
            child: Text("Maulana"),
          ),

          // bedanya margin dan pading meski sama2 kasih jarak?
          // margin jarak antar kontainer dg jarak objek sekeliling
          // padding jarak antar kontainer ke isi kontainer
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
            color: Colors.amber,
            child: Text("Atmaja"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
            color: Colors.amber,
            child: Text("kevinma"),
          ),
          // knp ga pake container aja?
          // lbih boros memo mengding pake padding widget
          // Padding widget-> jarak padding ke isi dari padding
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
            child: Text("I'm 19"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
            child: Text("years old"),
          ),
        ],
      ),
    );
  }
}
