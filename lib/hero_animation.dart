import 'dart:async';

import 'package:flutter/material.dart';

class HeroAnimationPage extends StatefulWidget {
  @override
  _HeroAnimationPageState createState() => _HeroAnimationPageState();
}

class _HeroAnimationPageState extends State<HeroAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("HeroAnimationPage"),
          centerTitle: true,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SecondPage()));
            },
            child: Hero(
              tag: "tag1",
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SecondPage"),centerTitle: true,),
      body: Column(
        children: [
          Hero(
            tag: "tag1",
            child: Container(
              height: 300,
              width: 300,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
