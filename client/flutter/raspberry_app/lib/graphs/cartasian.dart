import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  // Generate some dummy data for the cahrt
  // This will be used to draw the red line
  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the orange line
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the blue line
  final List<FlSpot> dummyData3 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: LineChart(
        LineChartData(
          borderData: FlBorderData(show: false),
          lineBarsData: [
            // The red line
            LineChartBarData(
              spots: dummyData1,
              isCurved: true,
              barWidth: 3,
              colors: [Colors.indigo],
            ),
            // The orange line
            LineChartBarData(
              spots: dummyData2,
              isCurved: true,
              barWidth: 3,
              colors: [Colors.red],
            ),
            // The blue line
            LineChartBarData(
              spots: dummyData3,
              isCurved: false,
              barWidth: 3,
              colors: [Colors.blue],
            )
          ],
        ),
      ),
    );
  }
}
