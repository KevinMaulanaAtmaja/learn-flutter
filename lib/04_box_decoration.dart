import 'package:flutter/material.dart';

class BoxDeco extends StatelessWidget {
  const BoxDeco({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Box Decoration")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            // color: Colors.red,
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              // color: Colors.blue,
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              // borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient( //kasih warna gradient
                colors: [Colors.red, Colors.yellow],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            // color: Colors.yellow,
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              // color: Colors.green
              border: Border.all(color: Colors.black, width: 3),
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/id/239/200/300"),
                fit: BoxFit.cover, //atur ukuran gambar
                // fit: BoxFit.contain,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 10, //blur bayangan
                  spreadRadius: 6, //nyebar bayangan
                  offset: Offset(-5, -5), //arah bayangan
                ),
              ],
              shape: BoxShape.circle, //bentuk box
            ),
          ),
        ],
      ),
    );
  }
}
