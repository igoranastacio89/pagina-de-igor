import 'package:flutter/material.dart';

class AnimatedContainerTranslation extends StatefulWidget {
  final Widget child;
  int duration;

  AnimatedContainerTranslation({required this.child, required this.duration});

  @override
  _AnimatedContainerTranslationState createState() =>
      _AnimatedContainerTranslationState();
}

class _AnimatedContainerTranslationState
    extends State<AnimatedContainerTranslation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.duration),
      vsync: this,
    );

    _animation = Tween<double>(begin: -1, end: 0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Iniciar a animação
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_animation.value * MediaQuery.of(context).size.width, 0),
          child: widget.child,
        );
      },
    );
  }
}


