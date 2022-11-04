// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../provider/user_provider.dart';
import 'user_icon.dart';

class UserInfoCard extends ConsumerWidget {
  const UserInfoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userStateNotifierProvider);

    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Row(
        children: <Widget>[
          UserIcon(),
          const SizedBox(width: 20),
          Text(
            user?.username != null ? user!.username : 'Username',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
