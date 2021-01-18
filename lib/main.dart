import 'package:flutter/material.dart';
import 'externalPackages/slidePopupDialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animations Demo',
      home: SlidePopupDialogExample(),
    );
  }
}
