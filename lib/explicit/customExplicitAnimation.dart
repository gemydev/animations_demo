import 'package:flutter/material.dart';

class CustomExplicitAnimation extends StatefulWidget {
  @override
  _CustomExplicitAnimationState createState() =>
      _CustomExplicitAnimationState();
}

class _CustomExplicitAnimationState extends State<CustomExplicitAnimation>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Size> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween<Size>(
      begin: Size(100, 100),
      end: Size(400, 400),
    ).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.linear));
    super.initState();
    // tow ways to connect controller with widget
    // 1 ) add
    // _animationController.addListener(() => setState((){}));
    // 2 ) use AnimatedBuilder Widget
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return FlutterLogo(
                  size: _animation.value.height,
                );
              }),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () => _animationController.forward(),
                color: Colors.green,
                child: Text("Forward"),
              ),
              RaisedButton(
                onPressed: () => _animationController.reverse(),
                color: Colors.red,
                child: Text("reverse"),
              )
            ],
          )
        ],
      ),
    );
  }
}
