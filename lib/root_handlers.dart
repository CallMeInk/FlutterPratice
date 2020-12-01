import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/bundle.dart';
import 'package:flutter_app/first_screen.dart';
import 'package:flutter_app/second_screen.dart';

Handler firstPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('firstPageHandler');
      return FirstScreen();
    }
);


Handler secondPageHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params){
    print('secondPageHandler');
    Bundle bundle = ModalRoute.of(context).settings.arguments as Bundle;
    print(bundle == null);
    return SecondScreen();
  }
);