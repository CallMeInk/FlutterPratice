import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroTest2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HeroTest2State();
  }

}

class HeroTest2State extends State<HeroTest2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "hero",
          child: FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }

}