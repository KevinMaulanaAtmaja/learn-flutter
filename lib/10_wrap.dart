import 'package:flutter/material.dart';

class Wraps extends StatelessWidget {
  const Wraps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wrap Layout")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade200,
        child: Wrap(
          // textDirection: TextDirection.rtl,
          // direction: Axis.vertical,
          // alignment: WrapAlignment.end,
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.end,
          spacing: 10,
          runSpacing: 20,
          // verticalDirection: VerticalDirection.up,
          children: List.generate(
            8,
            (index) => Container(
              width: index % 2 == 0 ? 200 : 150,
              height: index % 2 == 0 ? 200 : 150,
              color: index % 2 == 0 ? Colors.red : Colors.blue,
              child: Center(
                child: Text(
                  index.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
