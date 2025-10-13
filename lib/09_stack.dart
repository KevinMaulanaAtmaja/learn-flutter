import 'package:flutter/material.dart';

class Stacks extends StatelessWidget {
  const Stacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Demo")),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.yellow.shade100,
        child: Stack(
          alignment: Alignment.topRight,
          // alignment: Alignment.center,
          // alignment: Alignment.centerRight,
          children: [
            Container( //container1
              color: Colors.red.withOpacity(0.3),
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),Container( //container2
              color: Colors.green.withOpacity(0.3),
              child: Container(
                margin: EdgeInsets.all(20),
                color: Colors.green,
                width: 100,
                height: 100,
              ),
            ),Container( //container3
              color: Colors.blue.withOpacity(0.3),
              child: Container(
                margin: EdgeInsets.all(30),
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
