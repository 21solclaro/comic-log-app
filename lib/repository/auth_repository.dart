// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../provider/firebase_provider.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepository(ref.read));

class AuthRepository {
  const AuthRepository(this.read);

  final Reader read;

//ログイン中のユーザー情報を取得
  User? getCurrentUser() {
    try {
      return read(firebaseAuthProvider).currentUser;
    } on FirebaseAuthException catch (e) {
      throw authError(e.code);
    }
  }

  //ログイン中のユーザーIDを取得
  String? getUserId() {
    try {
      return read(firebaseAuthProvider).currentUser?.uid;
    } on FirebaseAuthException catch (e) {
      throw authError(e.code);
    }
  }

  //ログイン
  Future<void> signIn({required String email, required String password}) async {
    try {
      await read(firebaseAuthProvider)
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw authError(e.code);
    }
  }

  //新規登録
  Future<void> signUp({required String email, required String password}) async {
    try {
      await read(firebaseAuthProvider)
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw authError(e.code);
    }
  }

  //ログアウト
  Future<void> signOut() async {
    try {
      await read(firebaseAuthProvider).signOut();
    } on FirebaseAuthException catch (e) {
      throw authError(e.code);
    }
  }
}

String authError(String errorCode) {
  switch (errorCode) {
    case 'invalid-email':
      return 'メールアドレスを正しい形式で入力してください';
    case 'wrong-password':
      return 'パスワードが間違っています';
    case 'user-not-found':
      return 'ユーザーが見つかりません';
    case 'weak-password':
      return 'パスワードは6文字以上で入力してください';
    case 'user-disabled':
      return 'ユーザーが無効です';
    case 'email-already-in-use':
      return 'このメールアドレスは既に登録されています';
    default:
      return '不明なエラーです';
  }
}
