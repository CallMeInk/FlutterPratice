import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/root_handlers.dart';

import 'bundle.dart';
import 'callback.dart';

class Routes{
  static String root = "/";
  static String first_page = "/first_page";
  static String second_page = "/second_page";

  static void configureRoutes(FluroRouter router){
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });

    router.define(first_page, handler: firstPageHandler);
    router.define(second_page, handler: secondPageHandler);
  }

  // 跳转到某个界面
  static jumpTo(
      BuildContext context,
      dynamic path, {
        Bundle params,
        DataCallback dataCallback,
        VoidCallback jumpBack,
      }) async {
//    KeyBoardTool.hideKeyboard(context);
    final result = await Navigator.pushNamed(context, path.toString(), arguments: params);
    if (jumpBack != null) {
      jumpBack();
    }
    if (dataCallback != null && result != null) {
      dataCallback(result);
    }
  }

}