import 'package:clubfb/models/club.dart';
import 'package:flutter/material.dart';

class AnimatedImageState extends StatefulWidget {
  const AnimatedImageState({Key? key, required this.club}) : super(key: key);

  final Club club;

  @override
  _AnimatedImageStateState createState() => _AnimatedImageStateState();
}

class _AnimatedImageStateState extends State<AnimatedImageState>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset(widget.club.avatar),
    );
  }
}
