import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class IconAndMdiIcon extends StatelessWidget {
  const IconAndMdiIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Icons"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.home,
            size: 72,
            color: Colors.orange,
            shadows: [
              Shadow(
                offset: Offset(3, 3),
                color: Colors.black,
                blurRadius: 5
              )
            ],
          ),
          // https://pub.dev/packages/material_design_icons_flutter
          // https://pictogrammers.com/library/mdi/
          Icon(
            MdiIcons.netflix,
            size: 72,
            color: Colors.red.shade800,
            shadows: [
              Shadow(
                  offset: Offset(3, 3),
                  color: Colors.black,
                  blurRadius: 5
              )
            ],
          ),Icon(
            MdiIcons.googleDownasaur,
            size: 72,
            color: Colors.black45,
          ),
        ],
      ),
    );
  }
}
