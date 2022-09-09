import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user.dart';

class UserStateNotifier extends StateNotifier<User?> {
  UserStateNotifier() : super(null);

  final collection = FirebaseFirestore.instance.collection('users');

  void signIn(String email, String password) async {
    final result = await auth.FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    final DocumentSnapshot snapshot =
        await collection.doc(result.user!.uid).get();
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    state = User.fromJson(data);
  }

  void signUp(String username, String email, String password) async {
    final result =
        await auth.FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = User(
        uid: result.user!.uid,
        userImg: '',
        username: username,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now());

    await collection.doc(user.uid).set(user.toJson());
    state = user;
  }

  void signOut() async {
    await auth.FirebaseAuth.instance.signOut();
  }

  void update(String username) {
    state = state?.copyWith(username: username);
    final user = state?.toJson();
    collection.doc(state?.uid).update(user!);
  }
}

final userStateNotifierProvider =
    StateNotifierProvider<UserStateNotifier, User?>(
  (ref) => UserStateNotifier(),
);
