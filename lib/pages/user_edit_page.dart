// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../component/button/page_back_button.dart';
import '../component/button/save_button.dart';
import '../component/form/username_form.dart';
import '../component/user_icon.dart';

class UserEditPage extends ConsumerWidget {
  const UserEditPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            UserIcon(),
            SizedBox(height: 30),
            UsernameForm(),
            SizedBox(height: 30),
            SaveButton(),
            SizedBox(height: 10),
            PageBackButton(),
          ],
        ),
      ),
    );
  }
}
