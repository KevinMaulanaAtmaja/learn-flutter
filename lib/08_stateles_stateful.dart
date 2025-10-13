import 'package:flutter/material.dart';

class SLess extends StatelessWidget {
  const SLess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("StateLess")));
  }
}

// cth stateless: batu, gelas, fosil
// widget yg ttap spanjang aplikasi berjalan
// cth statefull: manusia(senang, marah, sedih), tumbuhan(biji => tunas => bunga)
// widget yg punya state, dan akan ditmpilkan sesuai kondisi state

class SFul extends StatefulWidget {
  const SFul({super.key});

  @override
  State<SFul> createState() => _SFulState();
}

class _SFulState extends State<SFul> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$number"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              child: Text("Tambah"),
            ),
          ],
        ),
      ),
    );
  }
}
