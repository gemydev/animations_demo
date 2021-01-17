import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool visible = true;
  double containerHeight = 100;
  double containerWidth = 200;
  Color containerColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          // https://api.flutter.dev/flutter/animation/Curves-class.html
          curve: Curves.easeInOutExpo,
          height: containerHeight,
          width: containerWidth,
          color: containerColor,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            containerHeight = 200;
            containerWidth = 100;
            containerColor = Colors.green;
          });
        },
        child: Icon(Icons.play_circle_fill),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
