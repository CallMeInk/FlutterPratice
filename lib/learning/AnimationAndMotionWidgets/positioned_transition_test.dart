import 'package:flutter/cupertino.dart';

class PositionedTransitionTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PositionedTransitionTestState();
  }

}

class PositionedTransitionTestState extends State<PositionedTransitionTest> with SingleTickerProviderStateMixin{

  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(10, 10, 10, 10),
      end: RelativeRect.fromLTRB(100, 100, 100, 100),
    ).animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Color(0xFFFF0000),
      child: Stack(
        children: [
          PositionedTransition(
              rect: _animation,
              child: Container(
                color: Color(0xFF00FF00),
              )
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

}