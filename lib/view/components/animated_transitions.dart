import 'package:flutter/material.dart';

class CustomAnimatedTransition extends StatefulWidget {
  CustomAnimatedTransition({super.key, required this.aniteWidget});

  Widget aniteWidget;

  @override
  State<CustomAnimatedTransition> createState() =>
      _CustomAnimatedTransitionState();
}

class _CustomAnimatedTransitionState extends State<CustomAnimatedTransition>
    with TickerProviderStateMixin {
  //bool icon = true;

  @override
  Widget build(BuildContext context) {
    late final AnimationController _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    late final Animation<Offset> offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.0, 0.0),
    ).animate(_controller);

    return AnimatedSwitcher(
      child: widget.aniteWidget,
      switchOutCurve: Curves.linear,
      duration: const Duration(milliseconds: 100),
      /*transitionBuilder: (child, animation) {
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        }*/
    );
  }
}
