import 'package:flutter/material.dart';

import 'animated_play_pause_button.dart';

class PlayerAction extends StatelessWidget {
  const PlayerAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      height: 100,
      // color: Colors.blue,
      child: const Center(
        child: AnimatedPlayPauseButton(),
      ),
    );
  }
}
