// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../component/button/custom_outlined_button.dart';
import '../component/button/cutom_elevated_button.dart';
import '../component/form/username_form.dart';
import '../component/user_icon.dart';
import '../provider/sign_provider.dart';
import '../provider/user_provider.dart';

class UserEditPage extends ConsumerWidget {
  const UserEditPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userStateNotifierProvider);
    final username = ref.watch(usernameProvider).text;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const UserIcon(),
            const SizedBox(height: 30),
            const UsernameForm(),
            const SizedBox(height: 30),
            CustomElevatedButton(
                text: 'Save',
                function: () => ref
                    .read(userStateNotifierProvider.notifier)
                    .updateUser(user: user!, username: username)),
            const SizedBox(height: 10),
            CustomOutlinedButton(
                text: 'Cancel', function: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}
