import 'package:flutter/material.dart';

class AnimatedPlayPauseButton extends StatefulWidget {
  const AnimatedPlayPauseButton({Key? key}) : super(key: key);

  @override
  State<AnimatedPlayPauseButton> createState() =>
      _AnimatedPlayPauseButtonState();
}

class _AnimatedPlayPauseButtonState extends State<AnimatedPlayPauseButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  onPressed() {
    if (_animationController.isDismissed) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      shape: const CircleBorder(),
      elevation: 3,
      padding: const EdgeInsets.all(30),
      child: AnimatedIcon(
        icon: AnimatedIcons.play_pause,
        progress: _animationController,
        color: Colors.white,
      ),
    );
  }
}
