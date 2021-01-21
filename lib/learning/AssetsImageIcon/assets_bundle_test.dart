import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetsBundleTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return AssetsBundleTestState();
  }

}

class AssetsBundleTestState extends State<AssetsBundleTest>{

  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
                data ?? ""
            ),
            GestureDetector(
              child: Text(
                  "click to load test.json"
              ),
              onTap: ()async{
                String test = await DefaultAssetBundle.of(context).loadString("assets/json/test.json");
                setState(() {
                  data = test;
                });
              },
            )
          ],
        ),
      ),
    );
  }

}