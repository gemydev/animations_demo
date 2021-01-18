import 'package:animations_demo/explicit/customExplicitAnimation.dart';
import 'package:flutter/material.dart';

import 'animation_example.dart';
import 'explicit/animatedWidget.dart';
import 'hero_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animations Demo',
      home: AnimationExample(),
    );
  }
}
