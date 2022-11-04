// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../component/button/custom_elevated_button.dart';
import '../../provider/user_provider.dart';

class SignOutModal extends ConsumerWidget {
  const SignOutModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: const Icon(Icons.logout),
      title: const Text('Sign Out'),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () => showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        builder: (BuildContext context) {
          return SizedBox(
            height: 160,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //サインアウトボタン
                  CustomElevatedButton(
                    label: 'Sign Out',
                    color: Colors.red,
                    onPressed: () => signOut(context, ref),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  //サインアウト
  void signOut(BuildContext context, WidgetRef ref) {
    ref.read(userStateNotifierProvider.notifier).signOut(context);
  }
}
