// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../model/book/book.dart';
import 'comic_provider.dart';

final bookStreamProvider = StreamProvider.autoDispose((ref) {
  final cid = ref.watch(cidProvider);
  final snapshots = FirebaseFirestore.instance
      .collection('comics')
      .doc(cid)
      .collection('books')
      .orderBy('volume')
      .snapshots();

  return snapshots.map((snapshot) =>
      snapshot.docs.map((doc) => Book.fromJson(doc.data())).toList());
});
