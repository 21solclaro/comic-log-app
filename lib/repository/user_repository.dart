// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../model/user/user.dart';
import '../provider/firebase_provider.dart';
import 'auth_repository.dart';

final userRepositoryProvider =
    Provider<UserRepository>((ref) => UserRepository(ref.read));

class UserRepository {
  const UserRepository(this.read);

  final Reader read;

  //ユーザー情報を新規登録
  Future<User> setUserInfo({required String username}) async {
    final String uid = read(authRepositoryProvider).getUserId()!;
    final user = User(
        uid: uid,
        userImg: '',
        username: username,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now());
    await read(firebaseFirestoreProvider)
        .collection('users')
        .doc(uid)
        .set(user.toJson());
    return user;
  }

  //ユーザー情報を取得
  Future<User> getUserInfo() async {
    final String? uid = read(authRepositoryProvider).getUserId();
    final userdoc = await read(firebaseFirestoreProvider)
        .collection('users')
        .doc(uid)
        .get();
    User user = User.fromJson(userdoc.data()!);
    return user;
  }

  //ユーザー情報をアップデート
  Future<User> updateUserInfo({
    required User user,
    String? userImg,
    String? username,
  }) async {
    final updatedUser = user.copyWith(
      userImg: userImg ?? user.userImg,
      username: username ?? user.username,
      updatedAt: DateTime.now(),
    );
    await read(firebaseFirestoreProvider)
        .collection('users')
        .doc(user.uid)
        .update(updatedUser.toJson());
    return updatedUser;
  }

  //ユーザー情報を削除
  Future<void> deleteUserInfo({required String uid}) async {
    await read(firebaseFirestoreProvider).collection('users').doc(uid).delete();
  }
}
