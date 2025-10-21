import 'package:flutter/material.dart';

class OnOffIndicator extends StatelessWidget {
  final bool isOn;
  final Color color;

  const OnOffIndicator({super.key, this.isOn = true, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: isOn ? color : Colors.grey.shade800,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 5),
        ],
      ),
    );
  }
}
