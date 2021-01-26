import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoActionSheetTestState();
  }

}

class CupertinoActionSheetTestState extends State<CupertinoActionSheetTest>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RaisedButton(
          child: Text("click button"),
          onPressed: (){
            showCupertinoModalPopup(
                context: context,
                builder: (context){
                  return CupertinoActionSheet(
                    title: Text("提示"),
                    message: Text("是否删除当前项"),
                    actions: [
                      CupertinoActionSheetAction(
                        child: Text('删除'),
                        onPressed: () {
                          Navigator.of(context).pop('delete');
                        },
                        isDefaultAction: true,
                      ),
                      CupertinoActionSheetAction(
                        child: Text('暂时不删'),
                        onPressed: () {
                          Navigator.of(context).pop('not delete');
                        },
                        isDestructiveAction: true,
                      ),
                    ],
                    cancelButton: CupertinoActionSheetAction(
                      child: Text('取消'),
                      onPressed: () {
                        Navigator.of(context).pop('cancel');
                      },
                    ),
                  );
                });
          },
        ),
      ),
    );
  }

}