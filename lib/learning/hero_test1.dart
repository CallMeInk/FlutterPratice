import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hero_test2.dart';

class HeroTest1 extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HeroTest1State();
  }

}

class HeroTest1State extends State<HeroTest1>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          child: Hero(
            tag: "hero",
            child: FlutterLogo(
              size: 50,
            ),
          ),
          onTap: (){
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => HeroTest2()));
          },
        ),
      ),
    );
  }

}