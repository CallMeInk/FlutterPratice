import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RawKeyBoardListenerTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RawKeyBoardListenerTestState();
  }

}

class RawKeyBoardListenerTestState extends State<RawKeyBoardListenerTest>{

  TextEditingController _controller = TextEditingController();
  FocusNode _textNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    print(111);
    TextField _textField = new TextField(
      controller: _controller,
    );
    FocusScope.of(context).requestFocus(_textNode);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: RawKeyboardListener(
              focusNode: _textNode,
              onKey: handleKey,
              child: _textField
          ),
        ),
      ),
    );
  }

  handleKey(RawKeyEvent key) {
    print("Event runtimeType is ${key.runtimeType}");
    if(key.runtimeType.toString() == 'RawKeyDownEvent'){
      RawKeyEventDataAndroid data = key.data as RawKeyEventDataAndroid;
      String _keyCode;
      _keyCode = data.keyCode.toString(); //keycode of key event (66 is return)

      print("why does this run twice $_keyCode");
    }
  }

}