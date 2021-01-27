import 'package:flutter/material.dart';
import 'package:flutter_app/base/application.dart';
import 'package:flutter_app/base/counter.dart';
import 'package:flutter_app/workTest/charts_flutter_test.dart';
import 'package:flutter_app/workTest/fast_test_page.dart';
import 'package:flutter_app/base/routes.dart';
import 'package:flutter_app/workTest/index_page.dart';
import 'package:flutter_app/workTest/reorderablelist_test.dart';
import 'package:provide/provide.dart';

import 'learning/AnimationAndMotionWidgets/animated_modal_barrier_test.dart';
import 'learning/AnimationAndMotionWidgets/animated_opacity_test.dart';
import 'learning/AnimationAndMotionWidgets/animated_physical_model_test.dart';
import 'learning/AnimationAndMotionWidgets/animated_positioned_test.dart';
import 'learning/AnimationAndMotionWidgets/animated_size_test.dart';
import 'learning/AnimationAndMotionWidgets/animated_widget_test.dart';
import 'learning/AnimationAndMotionWidgets/decorated_box_transition_test.dart';
import 'learning/AnimationAndMotionWidgets/fade_transition_test.dart';
import 'learning/AnimationAndMotionWidgets/positioned_transition_test.dart';
import 'learning/AnimationAndMotionWidgets/rotation_transition_test.dart';
import 'learning/AnimationAndMotionWidgets/scale_transition_test.dart';
import 'learning/AnimationAndMotionWidgets/size_transition_test.dart';
import 'learning/AnimationAndMotionWidgets/slide_transition_test.dart';
import 'learning/AssetsImageIcon/assets_bundle_test.dart';
import 'learning/AssetsImageIcon/icon_test.dart';
import 'learning/AsyncWidgets/future_builder_test.dart';
import 'learning/AsyncWidgets/stream_builder_test.dart';
import 'learning/cupertinoWidget/cupertino_action_sheet_test.dart';
import 'learning/cupertinoWidget/cupertino_activity_indicator_test.dart';
import 'learning/cupertinoWidget/cupertino_alert_dialog_test.dart';
import 'learning/cupertinoWidget/cupertino_button_test.dart';
import 'learning/cupertinoWidget/cupertino_context_menu.dart';
import 'learning/cupertinoWidget/cupertino_date_picker.dart';

void main() {
  var counter = Counter();
  var provider = Providers();
  
  provider.provide(Provider<Counter>.value(counter));
  
  runApp(
    ProviderNode(
      child: MyApp(),
      providers: provider,
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Routes.configureRoutes(Application.router);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: CupertinoDatePickerTest(),
      onGenerateRoute: Application.router.generator,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    TextStyle blackStyle = TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black); // 黑色样式
    TextStyle redStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red); // 红色样式
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:11111',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text.rich(
              TextSpan(
                  children: <TextSpan>[
                    TextSpan(text:'文本是视图系统中常见的控件，它用来显示一段特定样式的字符串，类似', style: redStyle), // 第 1 个片段，红色样式
                    TextSpan(text:'Android', style: blackStyle), // 第 1 个片段，黑色样式
                    TextSpan(text:'中的', style:redStyle), // 第 1 个片段，红色样式
                    TextSpan(text:'TextView', style: blackStyle) // 第 1 个片段，黑色样式
                  ]),
              textAlign: TextAlign.center,
            ),
            Container(
              child: Text('Container（容器）在 UI 框架中是一个很常见的概念，Flutter 也不例外。'),
              padding: EdgeInsets.all(18.0), // 内边距
              margin: EdgeInsets.all(44.0), // 外边距
              width: 180.0,
              height:240,
              alignment: Alignment.center, // 子 Widget 居中对齐
              decoration: BoxDecoration( //Container 样式
                color: Colors.red, // 背景色
                borderRadius: BorderRadius.circular(10.0), // 圆角边框
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
