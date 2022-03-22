import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/switch_page_provider.dart';

class TextFieldAction extends ConsumerWidget {
  const TextFieldAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(switchPageProvider.notifier);
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      height: 100,
      child: Center(
        child: ElevatedButton(
          onPressed: () => controller.to(PageState.list),
          child: const Text('Process'),
        ),
      ),
    );
  }
}
