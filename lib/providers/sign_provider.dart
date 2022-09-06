import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final usernameProvider =
    StateProvider.autoDispose((ref) => TextEditingController(text: ''));
final emailProvider =
    StateProvider.autoDispose((ref) => TextEditingController(text: ''));
final passwordProvider =
    StateProvider.autoDispose((ref) => TextEditingController(text: ''));

final isVisibleProvider = StateProvider<bool>((ref) => false);
