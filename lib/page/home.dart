import 'package:flutter/material.dart';

import '../widget/custom_text_field.dart';
import '../widget/player_action.dart';
import '../widget/song_tile.dart';
import '../widget/text_field_action.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lyrics generator'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            // Text Field
            SizedBox(
              height: 14.0,
            ),

            SongTile(),

            SizedBox(
              height: 14.0,
            ),

            PageSwitcher(),

            TextFieldAction(),

            PlayerAction(),
          ],
        ),
      ),
    );
  }
}
