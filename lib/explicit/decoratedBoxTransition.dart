import 'package:flutter/material.dart';

class DecoratedBoxTransitionExample extends StatefulWidget {
  @override
  _DecoratedBoxTransitionExampleState createState() =>
      _DecoratedBoxTransitionExampleState();
}

class _DecoratedBoxTransitionExampleState
    extends State<DecoratedBoxTransitionExample> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Decoration> _animation;

  final DecorationTween _decorationTween = DecorationTween(
      end: BoxDecoration(color: Colors.blue),
      begin: BoxDecoration(color: Colors.red));

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat(reverse: true);
    _animation = DecorationTween(
            end: BoxDecoration(color: Colors.green),
            begin: BoxDecoration(color: Colors.red))
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: DecoratedBoxTransition(
            // tow ways
            // decoration: _animation,
            decoration: _decorationTween.animate(_animationController),
            child: FlutterLogo(
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}
