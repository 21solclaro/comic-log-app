import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/comic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final comicStreamProvider = StreamProvider.autoDispose((_) {
  final snapshots = FirebaseFirestore.instance
      .collection('comics')
      .orderBy('startYear', descending: true)
      .snapshots();

  return snapshots.map((snapshot) =>
      snapshot.docs.map((doc) => Comic.fromJson(doc.data())).toList());
});

final cidProvider = StateProvider<String>((ref) => '');
