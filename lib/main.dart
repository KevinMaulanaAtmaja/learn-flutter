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
// import 'package:bljar_flutter/17_page_view.dart';
// import 'package:bljar_flutter/18_dropdown.dart';
// import 'package:bljar_flutter/19_gesture_detector.dart';
// import 'package:bljar_flutter/20_first_page.dart';
// import 'package:bljar_flutter/22_about_dialog.dart';
// import 'package:flutter/foundation.dart';
// import 'package:bljar_flutter/23_alert_dialog.dart';
// import 'package:bljar_flutter/24_simple_dialog.dart';
// import 'package:bljar_flutter/25_image_picker.dart';
// import 'package:bljar_flutter/26_date_time_picker.dart';
// import 'package:bljar_flutter/custom_widget/custom_widget.dart';
// import 'package:bljar_flutter/27_safe_area_media_query.dart';
import 'package:bljar_flutter/28_future_builder.dart';
import 'package:flutter/material.dart';

void main() {
  // LicenseRegistry.addLicense(() async* {
  //   yield const LicenseEntryWithLineBreaks(<String>['my_package'], '''
  //   License.text
  //   ''');
  // });

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
      // home: PageViews(),
      // home: Dropdowns(),
      // home: GestureDetectors(),
      // home: FirstPage(),
      // home: AboutDialogs(),
      // home: AlertDialogs(),
      // home: SimpleDialogs(),
      // home: ImagePickers(),
      // home: DateTimePickers(),
      // home: CustomWidget(),
      // home: SafeAreaMediaQuery(),
      home: FutureBuilders(),
    );
  }
}
