import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'frame_selector.dart';
import 'photo_editor.dart';

class PhotoFramePage extends StatefulWidget {
  const PhotoFramePage({super.key});

  @override
  _PhotoFramePageState createState() => _PhotoFramePageState();
}

class _PhotoFramePageState extends State<PhotoFramePage> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  _imgFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _selectedImage = File(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Frames App'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: _imgFromGallery,
            child: const Text('Select Photo from Gallery'),
          ),
          if (_selectedImage != null)
            Stack(
              children: [
                PhotoEditor(selectedImage: _selectedImage!),
                const FrameSelector(),
              ],
            )
        ],
      ),
    );
  }
}
