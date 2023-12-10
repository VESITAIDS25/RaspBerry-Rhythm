import 'package:flutter/material.dart';
import 'package:raspberry_app/styles.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Histogram extends StatelessWidget {
  const Histogram({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData1> histogramData = <ChartData1>[
      ChartData1('12th June', 5.250),
      ChartData1('13th June', 4.0),
      ChartData1('14th June', 8.275),
      ChartData1('15th June', 9.750),
      ChartData1('16th June', 7.750),
    ];
    return Center(
        child: Container(
            height: 360,
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                title: ChartTitle(
                    text: 'Previous Day Calories',
                    textStyle: TextStyle(color: Colors.white)),
                borderWidth: 0,
                plotAreaBorderWidth: 0,
                series: <ChartSeries>[
                  ColumnSeries<ChartData1, String>(
                      isTrackVisible: false,
                      trackColor: Colors.transparent,
                      dataSource: histogramData,
                      color: heartColor,
                      enableTooltip: true,
                      name: 'Previous Day Calories',
                      trackBorderColor: Colors.transparent,
                      borderWidth: 0,
                      legendItemText: 'Previous Day Calories',
                      xAxisName: 'Date',
                      borderColor: Colors.transparent,
                      xValueMapper: (ChartData1 data, index) => data.x,
                      yValueMapper: (ChartData1 data, _) => data.y)
                ])));
  }
}

class ChartData1 {
  ChartData1(this.x, this.y);
  final String x;
  final double y;
}
