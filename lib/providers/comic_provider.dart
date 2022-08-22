import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:comic_log_app/models/comic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final comicStreamProvider = StreamProvider.autoDispose((_) {
  final snapshots = FirebaseFirestore.instance
      .collection('comics')
      .orderBy('startYear', descending: true)
      .snapshots();

  return snapshots.map((snapshot) =>
      snapshot.docs.map((doc) => Comic.fromJson(doc.data())).toList());
});

final cidProvider = StateProvider<String>((ref) => '');
