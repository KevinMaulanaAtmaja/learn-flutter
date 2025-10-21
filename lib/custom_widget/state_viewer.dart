import 'package:bljar_flutter/custom_widget/on_off_indicator.dart';
import 'package:bljar_flutter/custom_widget/states.dart';
import 'package:flutter/material.dart';

class StateViewer extends StatefulWidget {
  const StateViewer({super.key});

  @override
  State<StateViewer> createState() => _StateViewerState();
}

class _StateViewerState extends State<StateViewer> {
  States _state = States.safe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        _state = States.values[(_state.index + 1) % States.values.length];
      }),
      child: UnconstrainedBox(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(22.5),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 15),
            ],
          ),
          child: Row(
            children: [
              OnOffIndicator(color: Colors.lightGreen, isOn: _state == States.safe),
              SizedBox(width: 5),
              OnOffIndicator(color: Colors.yellow, isOn: _state == States.warning),
              SizedBox(width: 5),
              OnOffIndicator(color: Colors.red, isOn: _state == States.danger),
            ],
          ),
        ),
      ),
    );
  }
}
