import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_photo/screens/nav_bar/nav_bar_items/home/widgets/search_widget.dart';

class PhotoCameraScreen extends StatefulWidget {
  const PhotoCameraScreen({Key key}) : super(key: key);

  @override
  _PhotoCameraScreenState createState() => _PhotoCameraScreenState();
}

class _PhotoCameraScreenState extends State<PhotoCameraScreen> {
  File _image;
  final picker = ImagePicker();
  Future getImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageFromCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.add_a_photo),
              onPressed: () {
                getImageFromCamera();
              },
            ),IconButton(
              icon: Icon(Icons.photo),
              onPressed: () {
                getImageFromGallery();
              },
            ),
          ]
        ),
      ),
    );
  }
}
