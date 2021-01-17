import 'package:flutter/material.dart';

class SlideTransitionExample extends StatefulWidget {
  @override
  _SlideTransitionExampleState createState() => _SlideTransitionExampleState();
}

class _SlideTransitionExampleState extends State<SlideTransitionExample>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Offset> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat(reverse: true);
    _animation = Tween<Offset>(end: Offset(0, 0), begin: Offset(1, 1)).animate(
        CurvedAnimation(
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
          child: SlideTransition(
            position: _animation,
            child: FlutterLogo(
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}
