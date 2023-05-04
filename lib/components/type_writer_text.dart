import 'package:flutter/material.dart';

// class TypewriterText extends StatefulWidget {
//   final String text;
//   final TextStyle style;
//   final Duration duration;
//
//   TypewriterText(
//       {required this.text, required this.style, required this.duration});
//
//   @override
//   _TypewriterTextState createState() => _TypewriterTextState();
// }
//
// class _TypewriterTextState extends State<TypewriterText>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<int> _animation;
//   String _animatedText = "";
//
//   @override
//   void initState() {
//     super.initState();
//
//     _controller = AnimationController(
//       duration: widget.duration ?? Duration(milliseconds: 500),
//       vsync: this,
//     );
//
//     _animation =
//         IntTween(begin: 0, end: widget.text.length).animate(_controller)
//           ..addListener(() {
//             setState(() {
//               _animatedText = widget.text.substring(0, _animation.value);
//             });
//           });
//
//     _controller.forward();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       _animatedText,
//       style: widget.style,
//     );
//   }
// }

import 'package:flutter/material.dart';

class TypewriterText extends StatefulWidget {
  final String text;
  final TextStyle style;
  final Duration duration;

  TypewriterText({required this.text, required this.style, required this.duration});

  @override
  _TypewriterTextState createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _textAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _textAnimation = IntTween(begin: 0, end: widget.text.length).animate(_controller);
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
      animation: _textAnimation,
      builder: (context, child) {
        String animatedText = widget.text.substring(0, _textAnimation.value);
        return RichText(
          softWrap: true,
          text: TextSpan(
            children: [
              TextSpan(text: animatedText, style: widget.style),
              TextSpan(text: '\n'),
            ],
          ),
        );
      },
    );
  }
}

