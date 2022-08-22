import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:comic_log_app/models/chapter.dart';
import 'package:comic_log_app/providers/comic_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chapterStreamProvider = StreamProvider.autoDispose((ref) {
  final cid = ref.watch(cidProvider);
  final snapshots = FirebaseFirestore.instance
      .collection('comics')
      .doc(cid)
      .collection('chapters')
      .snapshots();

  return snapshots.map((snapshot) =>
      snapshot.docs.map((doc) => Chapter.fromJson(doc.data())).toList());
});
