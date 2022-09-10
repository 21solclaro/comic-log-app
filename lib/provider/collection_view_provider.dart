// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum CollectionViewType { list, grid }

final collectionViewProvider =
    StateProvider<CollectionViewType>((ref) => CollectionViewType.list);
