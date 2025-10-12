import 'package:bljar_flutter/04_box_decoration.dart';
import 'package:bljar_flutter/02_col_row.dart';
import 'package:bljar_flutter/03_container.dart';
import 'package:bljar_flutter/01_main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: MainPage(),
      // home: ColRow(),
      // home: Containers(),
      home: BoxDeco(),
    );
  }
}
