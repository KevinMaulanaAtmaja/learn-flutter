import 'package:flutter/material.dart';

class InputDeco extends StatefulWidget {
  const InputDeco({super.key});

  @override
  State<InputDeco> createState() => _InputDecoState();
}

class _InputDecoState extends State<InputDeco> {
  TextEditingController textEditingController = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Decoration")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Hint Text",
                  hintStyle: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                  // hintMaxLines: 2,
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  floatingLabelStyle: TextStyle(color: Colors.teal),
                  // labelText: "Label Text",
                  labelStyle: TextStyle(color: Colors.red),
                  label: Container(
                    color: Colors.lime,
                    padding: EdgeInsets.all(3),
                    child: Text("Label2"),
                  ),
                  // helperText: 'Helper Text',
                  helperStyle: TextStyle(color: Colors.lightGreen),
                  // helperMaxLines: 2,
                  helper: Container(
                    color: Colors.lightGreenAccent,
                    padding: EdgeInsets.all(3),
                    child: Text("Helper2"),
                  ),
                ),
              ),
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  // counterText: "${textEditingController.text.length}",
                  counterStyle: TextStyle(color: Colors.blue.shade300),
                  counter: Container(
                    color: Colors.green.shade400,
                    padding: EdgeInsets.all(3),
                    child: Text("${textEditingController.text.length}"),
                  ),
                  // errorText: "Error Message",
                  errorStyle: TextStyle(color: Colors.red),
                  // errorMaxLines: 2,
                  error: Container(
                    color: Colors.red.shade500,
                    padding: EdgeInsets.all(3),
                    child: Text("error message"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
