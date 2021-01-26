import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoAlertDialogTestState();
  }

}

class CupertinoAlertDialogTestState extends State<CupertinoAlertDialogTest>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RaisedButton(
          child: Text('切换'),
          onPressed: () {
            showCupertinoDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(
                    title: Text('提示'),
                    content: Text('确认删除吗？'),
                    actions: <Widget>[
                      CupertinoDialogAction(child: Text('取消'),onPressed: (){},),
                      CupertinoDialogAction(child: Text('确认'),onPressed: (){},),
                    ],
                  );
                });
          },
        )
      ),
    );
  }

}