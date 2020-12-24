import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeTransitionTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SizeTransitionTestState();
  }

}

class SizeTransitionTestState extends State<SizeTransitionTest> with TickerProviderStateMixin{

  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 3),
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
        child: SizeTransition(
          sizeFactor: _animation,
          axis: Axis.horizontal,
          axisAlignment: -1,
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
    _controller.dispose();
    super.dispose();
  }

}