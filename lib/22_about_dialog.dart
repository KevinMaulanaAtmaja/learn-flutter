import 'package:flutter/material.dart';

class AboutDialogs extends StatefulWidget {
  const AboutDialogs({super.key});

  @override
  State<AboutDialogs> createState() => _AboutDialogsState();
}

class _AboutDialogsState extends State<AboutDialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Dialog")),
      body: Center(
        child: SizedBox(
          width: 200,
          child: ElevatedButton(onPressed: () {
            showDialog(context: context, builder: (context) => AboutDialog(
              applicationName: "About Dialog Flutter",
              applicationVersion: "1.0.0",
              applicationIcon: Icon(Icons.info),
              applicationLegalese: "© 2025 Flutter",
              children: [
                Text("This is a simple About Dialog example."),
                Text("You can add more info here."),
              ],
            ));
          }, child: Text("About Dialog")),
        ),
      ),
    );
  }
}
