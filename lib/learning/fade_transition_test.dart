import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadeTransitionTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return FadeTransitionTestState();
  }

}

class FadeTransitionTestState extends State<FadeTransitionTest> with SingleTickerProviderStateMixin{

  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Center(
        child: FlutterLogo(
          size: 50,
        ),
      ),
    );
  }

}