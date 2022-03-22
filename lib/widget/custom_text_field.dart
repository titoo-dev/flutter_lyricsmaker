import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/switch_page_provider.dart';

class PageSwitcher extends ConsumerWidget {
  const PageSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(switchPageProvider);
    switch (state) {
      case PageState.textarea:
        return const CustomTextField();
      case PageState.list:
        return const CustomList();
    }
  }
}

class CustomList extends StatelessWidget {
  const CustomList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 400,
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: const TextField(
        maxLines: 20,
        decoration: InputDecoration(
          hintText: 'Paste lyrics here',
        ),
      ),
    );
  }
}
