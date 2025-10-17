import 'dart:developer';

import 'package:flutter/material.dart';

class GestureDetectors extends StatefulWidget {
  const GestureDetectors({super.key});

  @override
  State<GestureDetectors> createState() => _GestureDetectorsState();
}

class _GestureDetectorsState extends State<GestureDetectors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gesture Detectors')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 30,
          children: [
            GestureDetector(
              // On Tap
              onTap: () => log("Tap!"),
              onTapDown: (details) => log(
                "Tap Down! ${details.globalPosition} ${details.localPosition} ${details.kind}",
              ),
              onTapUp: (details) => log(
                "Tap Up! ${details.globalPosition} ${details.localPosition} ${details.kind}",
              ),
              onTapCancel: () => log("Tap Cancel!"),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.red, Colors.blue],
                  ),
                ),
                child: Text("On Long Press",style: TextStyle(color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),),
              ),
            ),
            GestureDetector(
              // On Double Tap
              onDoubleTap: () => log("Double Tap!"),
              onDoubleTapDown: (details) => log(
                "Double Tap Down! ${details.globalPosition} ${details.localPosition} ${details.kind}",
              ),
              onDoubleTapCancel: () => log("Double Tap Cancel"),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.red, Colors.blue],
                  ),
                ),
                child: Text("On Long Press",style: TextStyle(color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),),
              ),
            ),
            GestureDetector(
              // On Long Press
              onLongPress: () => log("Long Press!"),
              onLongPressDown: (details) => log(
                "Long Press Down! ${details.globalPosition} ${details.localPosition} ${details.kind}",
              ),
              onLongPressStart: (details) => log(
                "Long Press Start! ${details.globalPosition} ${details.localPosition}",
              ),
              onLongPressUp: () => log("Long Press Up"),
              onLongPressEnd: (details) => log(
                "Long Press End ${details.globalPosition} ${details.localPosition}",
              ),
              onLongPressMoveUpdate: (details) => log(
                "Long Press Move Update! ${details.globalPosition} ${details.offsetFromOrigin}, ${details.localPosition} ${details.localOffsetFromOrigin}",
              ),
              onLongPressCancel: () => log("Long Press Cancel"),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.red, Colors.blue],
                  ),

                ),
                child: Text("On Long Press",style: TextStyle(color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
