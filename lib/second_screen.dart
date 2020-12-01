import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{

  List<charts.Series> seriesList;
  bool animate;

  SecondScreen(){
    seriesList = _createRandomData();
    animate = false;
  }


  /// Create random data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createRandomData() {
    final random = new Random();

    final data = [
      new TimeSeriesSales(DateTime(2017, 9, 19), random.nextInt(1000)),
      new TimeSeriesSales(DateTime(2017, 9, 20), random.nextInt(1000)),
      new TimeSeriesSales(DateTime(2017, 9, 21), random.nextInt(1000)),
      new TimeSeriesSales(DateTime(2017, 9, 22), random.nextInt(1000)),
      new TimeSeriesSales(DateTime(2017, 9, 23), random.nextInt(1000)),
      new TimeSeriesSales(DateTime(2017, 9, 24), random.nextInt(1000)),
      new TimeSeriesSales(DateTime(2017, 9, 25), random.nextInt(1000)),
      new TimeSeriesSales(DateTime(2017, 9, 26), random.nextInt(1000)),
    ];
    charts.Color _shade200 = charts.Color(r: 0x90, g: 0xCA, b: 0xF9); //#90CAF9
    charts.Color _shade700 = charts.Color(r: 0x00, g: 0xff, b: 0x00); //
    charts.Color _shade500 = charts.Color(r: 0x21, g: 0x96, b: 0xF3, darker: _shade700, lighter: _shade200); // #1976D2

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => _shade500,
        // areaColorFn: (_, __) => _shade200,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
  // EXCLUDE_FROM_GALLERY_DOCS_END

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: 100
          ),
          width: 300,
          height: 300,
          child: charts.TimeSeriesChart(
              seriesList,
              animate: false,
              defaultRenderer: charts.LineRendererConfig(
                includePoints: true,
                includeArea: true,
                stacked: true
              ),
            domainAxis: new charts.DateTimeAxisSpec(
              showAxisLine: false,
              renderSpec: charts.SmallTickRendererSpec(
                  labelStyle: charts.TextStyleSpec(fontSize: 12)
              ),
              tickProviderSpec: charts.DayTickProviderSpec(increments: [1]),
              tickFormatterSpec: new charts.AutoDateTimeTickFormatterSpec(
                day: new charts.TimeFormatterSpec(
                  format: 'MM.dd',
                  transitionFormat: 'MM.dd',
                ),
              ),
            ),
            primaryMeasureAxis: new charts.NumericAxisSpec(
              tickProviderSpec: charts.BasicNumericTickProviderSpec(desiredMinTickCount: 6),
              renderSpec: charts.GridlineRendererSpec(
                // 主轴绘制的配置
                // tickLengthPx: 0, // 刻度标识突出的长度
                // labelOffsetFromAxisPx: 32, // 刻度文字距离轴线的位移
                labelStyle: charts.TextStyleSpec(
                  // 刻度文字的样式
                  color: charts.Color.fromHex(code: '#999999'),
                ),
                axisLineStyle: charts.LineStyleSpec(
                  // 轴线的样式
                  color: charts.Color.fromHex(code: '#999999'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}

