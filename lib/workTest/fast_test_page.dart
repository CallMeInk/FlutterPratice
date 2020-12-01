import 'package:flutter/material.dart';
import 'package:flutter_app/base/counter.dart';
import 'package:flutter_app/workTest/index_page.dart';
import 'package:provide/provide.dart';

class FirstScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return FirstScreenState();
  }

}

class FirstScreenState extends State<FirstScreen> with SingleTickerProviderStateMixin{

  AnimationController animationController;
  Animation<double> animation;
  bool selected = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 300.0).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("you have pushed the button this many times"),
              Text("test test"),
              Image.network(
                "https://s1.ax1x.com/2020/09/20/wogPHJ.md.jpg",
                width: 100,
                height: 100,
              ),
              Provide<Counter>(
                  builder: (context, child, counter){
                    return Text("${counter.value}");
                  }
              ),
              ElevatedButton(
                  onPressed: (){
                    print("ElevatedButton clicked");
                    animationController.forward();
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Text(
                      "start animation"
                  )),
              // AnimatedBuilder(
              //     animation: animation,
              //     child: Container(
              //       decoration: BoxDecoration(
              //         color: Color(0xffff0000)
              //       ),
              //     ),
              //     builder: (BuildContext context, Widget child) {
              //       return Container(
              //           height: animation.value, width: animation.value, child: child);
              //     }
              // ),
              GestureDetector(
                child: AnimatedContainer(
                  width: selected ? 200.0 : 100.0,
                  height: selected ? 100.0 : 200.0,
                  color: selected ? Colors.red : Colors.blue,
                  alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
                  duration: Duration(seconds: 5),
                  curve: Curves.fastOutSlowIn,
                  child: FlutterLogo(size: 75),
                ),
                onTap: (){
                  setState(() {
                    selected = !selected;
                  });
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Index_page()));
                },
              ),
              AnimatedCrossFade(
                duration: const Duration(seconds: 3),
                firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
                secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
                crossFadeState: selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              ),
              AnimatedDefaultTextStyle(
                style: selected
                    ? TextStyle(
                    fontSize: 50, color: Colors.red, fontWeight: FontWeight.bold)
                    : TextStyle(
                    fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.w100),
                duration: const Duration(seconds: 2),
                curve: Curves.bounceInOut,
                textAlign: TextAlign.start,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                onEnd: () {
                  print("动画执行结束");
                },
                child: Text("Hello, Flutter"),
              )
            ],
          ),
        ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           Bundle bundle = Bundle();
//           bundle.putString('stringKey', 'string_test_value');
//           Routes.jumpTo(context, Routes.second_page, params: bundle);
//           //原始的navigator方式
// //          Navigator.of(context)
// //              .push(MaterialPageRoute(builder: (context) => SecondScreen()));
//         },
//         child: Icon(Icons.navigation),
//       ),
      ),
    );
  }

}