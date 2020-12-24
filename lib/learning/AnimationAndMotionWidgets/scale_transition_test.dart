import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaleTransitionTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return ScaleTransitionTestState();
  }

}

class ScaleTransitionTestState extends State<ScaleTransitionTest> with TickerProviderStateMixin{

  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: FlutterLogo(
              size: 150,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

}