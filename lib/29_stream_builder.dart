import 'package:flutter/material.dart';

class StreamBuilders extends StatefulWidget {
  const StreamBuilders({super.key});

  @override
  State<StreamBuilders> createState() => _StreamBuildersState();
}

class _StreamBuildersState extends State<StreamBuilders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stream Builder")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: StreamBuilder(
            stream: NumberGenerator().generate(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text(
                  "${snapshot.error}",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                );
              }

              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              }

              return Text(
                "Number: ${snapshot.data}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              );
            },
          ),
        ),
      ),
    );
  }
}

class NumberGenerator {
  Stream<int> generate() async* {
    int numb = 0;

    while (true) {
      await Future.delayed(Duration(seconds: 1));

      if (numb > 0 && numb % 5 == 0) {
        yield* Stream.error("Generated number is divided by 5");
      } else {
        yield numb;
      }
      numb += 1;
    }
  }
}
