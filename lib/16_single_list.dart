import 'dart:developer';

import 'package:flutter/material.dart';

class SingleList extends StatefulWidget {
  const SingleList({super.key});

  @override
  State<SingleList> createState() => _SingleListState();
}

class _SingleListState extends State<SingleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SingleChild ListView"),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal, //utk arah ke kanan-kiri/row
        // child: Row(children: createContainers()),
        child: Column(children: createContainers()),
      ),
      // body: ListView(children: createContainers()),
    );
  }

  // bedanya Single.. & ListView?
  // Single... => render smua data, ikut ukuran asli widget
  // ListView => hanya render data yg perlu/muncul, memenuhilayar lebarnya

  List<Widget> createContainers() => List.generate(
    30,
    (index) => UnconstrainedBox(
      child: Builder(
        builder: (context) {
          log("Rendering Container $index");
          return Container(
            margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            color: Colors.deepOrange.shade400,
            child: Center(
              child: Text(
                index.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}
