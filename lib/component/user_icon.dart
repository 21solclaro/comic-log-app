// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:image_picker/image_picker.dart';

class UserIcon extends StatefulWidget {
  const UserIcon({super.key});

  @override
  State<UserIcon> createState() => _UserIconState();
}

class _UserIconState extends State<UserIcon> {
  XFile? _image;
  final imagePicker = ImagePicker();

  // ギャラリーから画像を取得するメソッド
  Future getImageFromGarally() async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = XFile(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: CircleAvatar(
            radius: 65,
            backgroundImage: _image != null
                ? Image.file(File(_image!.path), fit: BoxFit.cover).image
                : Image.network(
                        'https://everydayicons.jp/wp/wp-content/themes/everydayicons/icons/thumbs/ei-person.png')
                    .image,
          ),
        ),
        Positioned(
            left: 120,
            top: 120,
            child: RawMaterialButton(
              onPressed: getImageFromGarally,
              child: const Icon(Icons.photo_album),
            ))
      ],
    );
  }
}
