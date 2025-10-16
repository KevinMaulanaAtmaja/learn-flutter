// import 'package:bljar_flutter/04_box_decoration.dart';
// import 'package:bljar_flutter/02_col_row.dart';
// import 'package:bljar_flutter/03_container.dart';
// import 'package:bljar_flutter/01_main_page.dart';
// import 'package:bljar_flutter/05_sized_box.dart';
// import 'package:bljar_flutter/06_text.dart';
// import 'package:bljar_flutter/07_font_type.dart';
// import 'package:bljar_flutter/08_stateles_stateful.dart';
// import 'package:bljar_flutter/09_stack.dart';
// import 'package:bljar_flutter/10_wrap.dart';
// import 'package:bljar_flutter/11_align.dart';
// import 'package:bljar_flutter/12_paddings.dart';
// import 'package:bljar_flutter/13_icons_mdi.dart';
// import 'package:bljar_flutter/14_text_field.dart';
// import 'package:bljar_flutter/15_input_deco.dart';
// import 'package:bljar_flutter/16_single_list.dart';
import 'package:bljar_flutter/17_page_view.dart';
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
      // home: BoxDeco(),
      // home: SizedBoxs(),
      // home: Texts(),
      // home: FontTypes(),
      // home: SFul(),
      // home: Stacks(),
      // home: Wraps(),
      // home: Aligns(),
      // home: Paddings(),
      // home: IconAndMdiIcon(),
      // home: TextFields(),
      // home: InputDeco(),
      // home: SingleList(),
      home: PageViews(),
    );
  }
}
