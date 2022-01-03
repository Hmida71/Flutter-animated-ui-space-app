import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AnimationType { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  // ignore: use_key_in_widget_constructors
  const FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<AnimationType>()
      ..add(
        AnimationType.opacity,
        Tween(begin: 0.0, end: 1.0),
        const Duration(milliseconds: 500),
      )
      ..add(
        AnimationType.translateY,
        Tween(begin: -40.0, end: 0.0),
        const Duration(milliseconds: 200),
      );

    return PlayAnimation<MultiTweenValues<AnimationType>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AnimationType.opacity),
        child: Transform.translate(
            offset: Offset(0, value.get(AnimationType.translateY)),
            child: child),
      ),
    );
  }
}
