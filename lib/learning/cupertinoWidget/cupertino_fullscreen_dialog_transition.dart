import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoFullscreenDialogTransitionTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoFullscreenDialogTransitionTestState();
  }

}

class CupertinoFullscreenDialogTransitionTestState extends State<CupertinoFullscreenDialogTransitionTest> with SingleTickerProviderStateMixin{

  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              onPressed: () => _animationController.forward(),
              child: Text('Forward'),
            ),
            RaisedButton(
              onPressed: () => _animationController.reverse(),
              child: Text('Reverse'),
            ),
          ],
        ),
        CupertinoFullscreenDialogTransition(
          child: Container(
            color: Colors.blueGrey,
            height: 300,
          ),
        ),

      ],
    );
  }

}