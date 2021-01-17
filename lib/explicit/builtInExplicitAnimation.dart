import 'package:flutter/material.dart';

class BuiltInExplicitAnimationExample extends StatefulWidget {
  @override
  _BuiltInExplicitAnimationExampleState createState() =>
      _BuiltInExplicitAnimationExampleState();
}

class _BuiltInExplicitAnimationExampleState
    extends State<BuiltInExplicitAnimationExample>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutExpo);
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
          child: RotationTransition(
            turns: _animation,
            child: FlutterLogo(
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}
