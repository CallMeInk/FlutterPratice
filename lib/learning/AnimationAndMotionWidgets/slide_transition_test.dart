import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideTransitionTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SlideTransitionTestState();
  }

}

class SlideTransitionTestState extends State<SlideTransitionTest> with TickerProviderStateMixin{

  AnimationController _controller;
  Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this
    )..repeat(reverse: true);
    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(1.5, 0.0)
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SlideTransition(
          position: _animation,
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