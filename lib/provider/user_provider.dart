// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../model/user/user.dart';
import '../page/root_page.dart';
import '../page/start_page.dart';
import '../repository/auth_repository.dart';
import '../repository/user_repository.dart';
import 'page_provider.dart';

class UserStateNotifier extends StateNotifier<User?> {
  UserStateNotifier(this.ref) : super(null);

  Ref ref;

  //新規登録
  void signUp({
    context,
    required TextEditingController email,
    required TextEditingController password,
    required TextEditingController username,
  }) async {
    try {
      await ref
          .read(authRepositoryProvider)
          .signUp(email: email.text, password: password.text);
      state = await ref
          .read(userRepositoryProvider)
          .setUserInfo(username: username.text);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const RootPage()));
      email.clear();
      password.clear();
      username.clear();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('登録に失敗しました'), backgroundColor: Colors.red));
    }
  }

  //ログイン
  void signIn({
    context,
    required TextEditingController email,
    required TextEditingController password,
  }) async {
    try {
      await ref
          .read(authRepositoryProvider)
          .signIn(email: email.text, password: password.text);
      state = await ref.read(userRepositoryProvider).getUserInfo();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const RootPage()));
      email.clear();
      password.clear();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('ログインに失敗しました'), backgroundColor: Colors.red));
    }
  }

  //サインアウト
  void signOut(BuildContext context) async {
    ref.read(authRepositoryProvider).signOut();
    await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const StartPage()));
    ref.read(pageProvider.notifier).state = PageType.home;
    state = null;
  }

  //ユーザー名をアップデート
  void updateUsername({
    required User user,
    required TextEditingController username,
  }) async {
    state = await ref
        .read(userRepositoryProvider)
        .updateUsername(user: user, username: username.text);
    username.clear();
  }
}

final userStateNotifierProvider =
    StateNotifierProvider<UserStateNotifier, User?>(
  (ref) => UserStateNotifier(ref),
);
