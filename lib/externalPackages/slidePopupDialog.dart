import 'package:flutter/material.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

class SlidePopupDialogExample extends StatefulWidget {
  @override
  _SlidePopupDialogExampleState createState() => _SlidePopupDialogExampleState();
}

class _SlidePopupDialogExampleState extends State<SlidePopupDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SlidePopupDialogExample"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Press to open dialog"),
          onPressed: _showDialog,
        ),
      ),
    );
  }

  void _showDialog() {
    slideDialog.showSlideDialog(
      context: context,
      child: Text("Hello World"),
      barrierColor: Colors.white.withOpacity(0.7),
      pillColor: Colors.red,
      backgroundColor: Colors.yellow,
    );
  }
}