import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecoratedBoxTransitionTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return DecoratedBoxTransitionTestState();
  }

}

class DecoratedBoxTransitionTestState extends State<DecoratedBoxTransitionTest> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  final DecorationTween _decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Color(0xFFFFFFFF),
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(60),
      shape: BoxShape.rectangle,
      boxShadow: [
        BoxShadow(
          color: Color(0x66666666),
          blurRadius: 10.0,
          spreadRadius: 3.0,
          offset: Offset(0, 6.0),
        )
      ]
    ),
    end: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.zero,
    )
  );

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: DecoratedBoxTransition(
          position: DecorationPosition.background,
          decoration: _decorationTween.animate(_controller),
          child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(10),
            child: const FlutterLogo(),
          ),
        ),
      ),
    );
  }

}