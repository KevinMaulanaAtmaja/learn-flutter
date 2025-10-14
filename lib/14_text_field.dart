import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  final TextEditingController _controller = TextEditingController(text: 'DEFAULT');

  @override
  void initState() {
    super.initState();
    // Listener ini bikin Text() di bawah update otomatis tanpa glitch
    _controller.addListener(() {
      setState(() {}); // hanya rebuild Text(), bukan TextField-nya
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // wajib untuk mencegah memory leak
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextField Example")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              // obscureText: true,
              // obscuringCharacter: '*',
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              cursorColor: Colors.blueAccent,
              inputFormatters: [
                TextInputFormatter.withFunction((oldValue, newValue) {
                  return TextEditingValue(
                    text: newValue.text.toUpperCase(),
                    selection: newValue.selection,
                  );
                }),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              _controller.text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
