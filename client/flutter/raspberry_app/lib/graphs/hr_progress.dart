import 'package:flutter/material.dart';
import 'package:raspberry_app/styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HorizontalProgress extends StatelessWidget {
  HorizontalProgress({super.key});

  List days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  double getDay() {
    print(DateTime.now().day);
    num day = 0;

    for (int i = 0; i <= DateTime.now().month - 2; i++) {
      day += days[i];
    }
    day += DateTime.now().day;
    return day / 365;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8),
      child: SfLinearGauge(
        showTicks: true,
        showLabels: true,
        animationDuration: 700,
        animateAxis: true,
        animateRange: true,
        minimum: 0,
        majorTickStyle: const LinearTickStyle(
          length: 10,
          color: Colors.white,
          thickness: 2,
        ),
        minorTickStyle: const LinearTickStyle(
          length: 5,
          color: Colors.white,
          thickness: 0.8,
        ),
        axisLabelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
        axisTrackStyle: LinearAxisTrackStyle(
          thickness: 10,
          edgeStyle: LinearEdgeStyle.bothCurve,
          color: Colors.white.withOpacity(0.3),
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.7),
              Colors.white.withOpacity(0.9),
              Colors.white.withOpacity(1),
            ],
            stops: [0.25, 0.5, 0.75],
          ),
        ),
        markerPointers: [
          LinearWidgetPointer(
            value: getDay() * 100,
            position: LinearElementPosition.cross,
            child: Transform.rotate(
              angle: -12,
              child: Image.network(
                'https://www.pngplay.com/wp-content/uploads/6/Flat-Shoes-Vector-PNG-Clipart-Background.png',
                // 'assets/images/shoe.png',
                height: 40,
                width: 40,
              ),
            ),
          ),
        ],
        barPointers: [
          LinearBarPointer(
              animationDuration: 1200,
              animationType: LinearAnimationType.linear,
              color: heartColor,
              thickness: 10,
              edgeStyle: LinearEdgeStyle.bothCurve,
              value: getDay() * 100)
        ],
      ),
    );
  }
}
