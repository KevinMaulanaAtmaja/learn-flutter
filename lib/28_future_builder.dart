import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class FutureBuilders extends StatelessWidget {
  const FutureBuilders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future Builder")),
      body: Center(
        child: FutureBuilder(
          future: getNumber(),
          builder: (context, snapshot) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "${snapshot.hasError
                    ? (snapshot.error! as TimeoutException).message
                    : snapshot.connectionState == ConnectionState.done
                    ? snapshot.data
                    : 'Loading...'}",
                // "${snapshot.hasData ? snapshot.data : 'Loading...'}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            );
          },
        ),
      ),
    );
  }
}

Future<int> getNumber() async {
  await Future.delayed(const Duration(seconds: 3));
  int numb = Random().nextInt(10);

  if (numb < 5) {
    throw TimeoutException("Failed to get number(Timeout)");
  } else {
    return numb;
  }
}
