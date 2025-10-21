import 'package:bljar_flutter/custom_widget/state_viewer.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: StateViewer()),
    );
  }
}
