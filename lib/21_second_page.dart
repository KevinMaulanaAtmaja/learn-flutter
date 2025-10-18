import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page"), backgroundColor: Colors.pink.shade300,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            SizedBox(
              width: 250,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  }, child: Text("Go to Second Page again")),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, "Hello from Second Page");
                  }, child: Text("Back")),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  }, child: Text("Back to Main Page")),
            ),
          ],
        ),
      ),
    );
  }
}
