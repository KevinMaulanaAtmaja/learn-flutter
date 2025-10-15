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
              TextField(
                decoration: InputDecoration(
                  // icon: Icon(Icons.person, color: Colors.blue.shade400),
                  // iconColor: Colors.blue.shade100,
                  icon: Container(
                    width: 20,
                    height: 20,
                    color: Colors.blue.shade900,
                  ),
                  // prefixText: 'PREFFIX',
                  // prefixStyle: TextStyle(color: Colors.blue.shade300),
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.blue.shade400,
                  prefix: Container(
                    color: Colors.blue.shade100,
                    padding: EdgeInsets.all(3),
                    child: Text(
                      "Prefix",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                  ),
                  // suffixText: 'SUFFIX',
                  // suffixStyle: TextStyle(color: Colors.green.shade300),
                  suffixIcon: Icon(Icons.coffee),
                  suffixIconColor: Colors.green,
                  suffix: Container(
                    color: Colors.green.shade100,
                    padding: EdgeInsets.all(3),
                    child: Text(
                      "Suffix",
                      style: TextStyle(color: Colors.green.shade900),
                    ),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text("Gap Padding"),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  // enabledBorder: InputBorder.none,
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.lime, width: 2),
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lime, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 20,
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabled: false,
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  errorText: "Error",
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink.shade200,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(10),
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
