// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final imageProvider = StateProvider<XFile?>((ref) => null);

class UserIcon extends ConsumerWidget {
  UserIcon({super.key});

  final imagePicker = ImagePicker();

  // ギャラリーから画像を取得するメソッド
  Future<void> getImageFromGarally(WidgetRef ref) async {
    final XFile? pickedFile =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      ref.read(imageProvider.notifier).state = XFile(pickedFile.path);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final XFile? image = ref.watch(imageProvider);

    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 50,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 48,
        backgroundImage: image != null
            ? Image.file(File(image.path), fit: BoxFit.cover).image
            : Image.asset('assets/icon/icon_ios.png').image,
        child: Align(
          alignment: Alignment.bottomRight,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            radius: 16,
            child: IconButton(
              icon: const Icon(
                Icons.camera_alt,
                size: 16,
              ),
              onPressed: () async => getImageFromGarally(ref),
            ),
          ),
        ),
      ),
    );
  }
}
