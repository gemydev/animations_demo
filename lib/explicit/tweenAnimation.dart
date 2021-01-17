import 'dart:math';

import 'package:flutter/material.dart';

class TweenAnimationExample extends StatefulWidget {
  @override
  _TweenAnimationExampleState createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TweenAnimation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: _value),
              duration: Duration(seconds: 2),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              // event apply on child
              builder: (context, value, child) {
                return Transform.rotate(
                  angle: value,
                  child: child,
                );
              }),
          Text(
            "Value :${(_value * (180 / pi)).round()}",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Slider(
            value: _value,
            min: 0,
            max: pi * 2,
            divisions: 4,
            label: _value.round().toString(),
            onChanged: (double value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
