import 'package:flutter/material.dart';

class SongTile extends StatelessWidget {
  const SongTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: const ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(),
        title: Text('Song Title'),
      ),
    );
  }
}
