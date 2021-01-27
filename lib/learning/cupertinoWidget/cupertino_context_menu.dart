import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuText extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoContextMenuTextState();
  }

}

class CupertinoContextMenuTextState extends State<CupertinoContextMenuText>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            child: CupertinoContextMenu(
              child: Container(
                color: Color(0xFFFF0000),
              ),
              actions: [
                CupertinoContextMenuAction(
                  child: const Text('Action one'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoContextMenuAction(
                  child: const Text('Action two'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}