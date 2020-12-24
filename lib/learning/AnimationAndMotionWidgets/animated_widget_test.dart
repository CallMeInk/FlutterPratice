import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedWidgetTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return AnimatedWidgetTestState();
  }

}

class AnimatedWidgetTestState extends State<AnimatedWidgetTest> with TickerProviderStateMixin{

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SpinningContainer(controller: _controller,);
  }

}

class SpinningContainer extends AnimatedWidget{

  const SpinningContainer({Key key, AnimationController controller}) : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * 2.0 * pi,
      child: Container(width: 200.0, height: 200.0, color: Colors.green),
    );
  }

}