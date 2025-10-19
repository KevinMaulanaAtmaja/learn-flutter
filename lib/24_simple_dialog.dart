import 'dart:developer';
import 'package:flutter/material.dart';

class SimpleDialogs extends StatefulWidget {
  const SimpleDialogs({super.key});

  @override
  State<SimpleDialogs> createState() => _SimpleDialogsState();
}

class _SimpleDialogsState extends State<SimpleDialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Dialog")),
      body: Center(
        child: SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => SimpleDialog(
                  title: Text(
                    "Simple Dialog!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(24, 12, 24, 14),
                  children: [
                    Text(
                      "This is a simple dialog. this is used to display info to the user. do you like it?",
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'yes'),
                          child: Text("Yes"),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'no'),
                          child: Text("No"),
                        ),
                      ],
                    ),
                  ],
                ),
              ).then((value) => log(value ?? "No value return"));
            },
            child: Text("Simple Dialog!"),
          ),
        ),
      ),
    );
  }
}
