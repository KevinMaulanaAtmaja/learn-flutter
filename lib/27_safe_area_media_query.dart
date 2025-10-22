import 'dart:developer';
import 'package:flutter/material.dart';

class SafeAreaMediaQuery extends StatefulWidget {
  const SafeAreaMediaQuery({super.key});

  @override
  State<SafeAreaMediaQuery> createState() => _SafeAreaMediaQueryState();
}

class _SafeAreaMediaQueryState extends State<SafeAreaMediaQuery> {
  // pixel == logical pixel (di flutter)
  @override
  Widget build(BuildContext context) {
    // tanpa widget SafeArea jdi widget2 ketutupan kamera, icon baterai dll
    log("Ukuran SafeArea: ${MediaQuery.paddingOf(context)}"); //sama aja pake .of(context).padding
    // log("Ukuran SafeArea: ${MediaQuery.of(context).padding}"); //ukuran safearea defaultnya
    log("Ukuran Layar Device: ${MediaQuery.sizeOf(context)}"); //ukuran layar device(hp)
    log("Lebar Layar: ${MediaQuery.sizeOf(context).width}");
    log("Tinggi Layar: ${MediaQuery.sizeOf(context).height}");
    log("Device Pixel Ratio: ${MediaQuery.devicePixelRatioOf(context)}");

    return Padding(
      padding: MediaQuery.of(context).padding,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 100, height: 100, color: Colors.red.shade700),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow.shade700,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green.shade700,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 100, height: 100, color: Colors.red.shade700),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow.shade700,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green.shade700,
                ),
              ],
            ),
          ],
        ),
      ),
    );
    // return SafeArea(
    //   child: Scaffold(
    //     body: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Container(width: 100, height: 100, color: Colors.red.shade700),
    //             Container(width: 100, height: 100, color: Colors.yellow.shade700),
    //             Container(width: 100, height: 100, color: Colors.green.shade700),
    //           ],
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Container(width: 100, height: 100, color: Colors.red.shade700),
    //             Container(width: 100, height: 100, color: Colors.yellow.shade700),
    //             Container(width: 100, height: 100, color: Colors.green.shade700),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
