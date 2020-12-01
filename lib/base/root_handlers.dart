import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/base/bundle.dart';
import 'package:flutter_app/workTest/fast_test_page.dart';
import 'package:flutter_app/workTest/index_page.dart';

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
    return Index_page();
  }
);