import 'package:flutter/material.dart';

class AnimatedWidgetExample extends StatefulWidget {
  @override
  _AnimatedWidgetExampleState createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this)..repeat();
    _animation = Tween<double>(begin: 200 ,end: 350).animate(_animationController);
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
      body: Center(
        child: ContainerWidthTransition(
          width: _animation,
        ),
      ),
    );
  }
}

class ContainerWidthTransition extends AnimatedWidget {
  Animation<double> get width => listenable;

  ContainerWidthTransition({width}) : super(listenable: width);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.value,
      child: OutlinedButton(
        child: Text("Button"),
        onPressed: () {},
      ),
    );
  }
}
