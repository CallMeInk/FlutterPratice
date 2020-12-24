import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RotationTransitionTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return RotationTransitionTestState();
  }

}

class RotationTransitionTestState extends State<RotationTransitionTest> with TickerProviderStateMixin{

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
      curve: Curves.elasticOut
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RotationTransition(
          turns: _animation,
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

}