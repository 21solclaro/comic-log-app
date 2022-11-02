// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../provider/sign_provider.dart';
import '../../provider/user_provider.dart';
import '../../repository/user_repository.dart';
import '../button/custom_elevated_button.dart';
import '../form/username_form.dart';

class UsernameModal extends ConsumerWidget {
  const UsernameModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: const Text('Username'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () => showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        builder: (BuildContext context) {
          return SizedBox(
            height: 240,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //ユーザーネームフォーム
                  const UsernameForm(),
                  const SizedBox(height: 30),
                  //更新ボタン
                  CustomElevatedButton(
                    label: 'Update',
                    color: Colors.black,
                    onPressed: () {
                      updateUsername(context, ref);
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void updateUsername(BuildContext context, WidgetRef ref) async {
    final user = await ref.watch(userRepositoryProvider).getUserInfo();
    final username = ref.watch(usernameProvider);
    ref
        .read(userStateNotifierProvider.notifier)
        .updateUsername(user: user, username: username);
  }
}
