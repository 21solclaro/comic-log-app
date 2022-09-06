import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/chapter.dart';
import 'comic_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chapterStreamProvider = StreamProvider.autoDispose((ref) {
  final cid = ref.watch(cidProvider);
  final snapshots = FirebaseFirestore.instance
      .collection('comics')
      .doc(cid)
      .collection('chapters')
      .orderBy('volume')
      .snapshots();

  return snapshots.map((snapshot) =>
      snapshot.docs.map((doc) => Chapter.fromJson(doc.data())).toList());
});
