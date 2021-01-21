import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreamBuilderTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return StreamBuilderTestState();
  }

}

class StreamBuilderTestState extends State<StreamBuilderTest>{

  StreamController<String> _streamController;

  @override
  void initState() {
    super.initState();
    _streamController = StreamController<String>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StreamBuilder(
            stream: _streamController.stream,
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data);
              }
              return Text('未收到数据');
            },
          ),
          RaisedButton(
            child: Text('发送数据'),
            onPressed: () {
              _streamController.add('new data');
            },
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _streamController.close();
  }

}