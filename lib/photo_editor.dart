import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoEditor extends StatelessWidget {
  final File selectedImage;

  const PhotoEditor({super.key, required this.selectedImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: PhotoView(
        customSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.width),
        imageProvider: FileImage(selectedImage),
        enableRotation: true,
        backgroundDecoration: const BoxDecoration(color: Colors.white),
        basePosition: Alignment.center,
      ),
    );
  }
}
