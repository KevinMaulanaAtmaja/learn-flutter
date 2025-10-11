import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //tmbhn jarak dari luar widgetnya(space)
                // margin: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(0, 10, 20, 30),
                // margin: EdgeInsets.only(left: 20, right: 10),
                // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: EdgeInsets.all(10), //tmbhn jarak dari dlm widgetnya
                color: Colors.red,
                width: 100,
                height: 100,
                child: Container(
                  color: Colors.orange,
                ),
              ),
              Container(
                color: Colors.yellow,
                width: 100,
                height: 100,
              )
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              )
            ],
          ),
        ],
      ),
    );
  }
}
