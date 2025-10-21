import 'package:bljar_flutter/custom_widget/states.dart';
import 'package:bljar_flutter/custom_widget/state_viewer.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  const CustomWidget({super.key});

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  States _state = States.safe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_state.toString()),
          SizedBox(height: 20,),
          StateViewer(
            initialState: _state,
            onStateChanged: (state) => setState(() {
              _state = state;
            }),
          ),
        ],
      )),
    );
  }
}
