import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum PageState { textarea, list }

final switchPageProvider = StateNotifierProvider<SwitchPageNotifier, PageState>(
  (ref) => SwitchPageNotifier(),
);

class SwitchPageNotifier extends StateNotifier<PageState> {
  SwitchPageNotifier() : super(PageState.textarea);

  to(PageState value) {
    state = value;
    debugPrint('$state');
  }
}
