// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum PageType { home, search, profile, setting }

final pageProvider = StateProvider<PageType>((ref) => PageType.home);
