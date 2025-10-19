import 'dart:developer';

import 'package:flutter/material.dart';

class AlertDialogs extends StatefulWidget {
  const AlertDialogs({super.key});

  @override
  State<AlertDialogs> createState() => _AlertDialogsState();
}

class _AlertDialogsState extends State<AlertDialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Dialogs")),
      body: Center(
        child: SizedBox(
          width: 200,
          child: ElevatedButton(onPressed: () {
            showDialog(context: context, builder: (context) => AlertDialog(
              icon: Icon(Icons.warning, color: Colors.red,),
              backgroundColor: Colors.yellow.shade400,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              actionsAlignment: MainAxisAlignment.center,
              title: Text("Warning!"),
              content: Text("This is a warning message."),
              actions: [
                TextButton(onPressed: () => Navigator.pop(context, 'ok'), child: Text("OK")),
                TextButton(onPressed: () => Navigator.pop(context, 'cancel'), child: Text("Close")),
              ]
            )
            ).then((value) => log(value ?? "No value return"));
          }, child: Text("Warning!")),
        ),
      ),
    );
  }
}
