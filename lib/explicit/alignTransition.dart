import 'package:flutter/material.dart';

class AlignTransitionExample extends StatefulWidget {
  @override
  _AlignTransitionExampleState createState() => _AlignTransitionExampleState();
}

class _AlignTransitionExampleState extends State<AlignTransitionExample>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<AlignmentGeometry> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat(reverse: true);
    _animation = Tween<AlignmentGeometry>(
            end: Alignment.topCenter, begin: Alignment.bottomCenter)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.easeInOutExpo));
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
          child: AlignTransition(
            alignment: _animation,
            child: FlutterLogo(
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}
