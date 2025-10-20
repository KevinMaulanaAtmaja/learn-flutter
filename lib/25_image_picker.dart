import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickers extends StatefulWidget {
  const ImagePickers({super.key});

  @override
  State<ImagePickers> createState() => _ImagePickersState();
}

class _ImagePickersState extends State<ImagePickers> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Picker")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: image == null ? Colors.grey.shade100 : null,
                image: image != null
                    ? DecorationImage(image: FileImage(File(image!.path)))
                    : null,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // ImageSource.gallery
                ImagePicker().pickImage(source: ImageSource.camera).then((
                  value,
                ) {
                  setState(() {
                    image = value;
                  });
                });
              },
              child: const Text("Take Image"),
            ),
            ElevatedButton(
              onPressed: () async {
                ImagePicker().pickImage(source: ImageSource.gallery).then((
                  value,
                ) {
                  setState(() {
                    image = value;
                  });
                });
              },
              child: const Text("Choose Image"),
            ),
          ],
        ),
      ),
    );
  }
}
