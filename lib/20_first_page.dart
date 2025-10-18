import 'dart:developer';

import 'package:bljar_flutter/21_second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        backgroundColor: Colors.blue.shade400,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 30,
        children: [
          Center(
            child: SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text("Go to Second Page"),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push<String>(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  ).then((value) => log(value ?? 'No Return Value'));
                },
                child: Text("Go to Second Page with Return Value"),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text("Go to Second Page Permanent"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
