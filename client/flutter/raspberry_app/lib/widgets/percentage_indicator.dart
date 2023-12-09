import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class PercentageIndicator extends StatefulWidget {
  final double value;
  const PercentageIndicator({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  State<PercentageIndicator> createState() => _PercentageIndicatorState();
}

class _PercentageIndicatorState extends State<PercentageIndicator> {
  double val = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int ind = widget.value.toString().indexOf('.');
    return Container(
        color: Colors.white,
        child: SfRadialGauge(
            backgroundColor: Colors.white,
            enableLoadingAnimation: true,
            animationDuration: 4500,
            axes: <RadialAxis>[
              RadialAxis(
                  minimum: 0,
                  maximum: 800,
                  showTicks: true,
                  showLastLabel: true,
                  axisLineStyle: AxisLineStyle(
                      thickness: 12,
                      color: Colors.green,
                      gradient: SweepGradient(colors: [
                        Colors.green,
                        Color.fromARGB(255, 192, 26, 14)
                      ]),
                      cornerStyle: CornerStyle.bothCurve),
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: 50,
                      endWidth: 12,
                      color: Colors.transparent,
                      rangeOffset: 30,
                    ),
                    GaugeRange(
                      startValue: 50,
                      endValue: 100,
                      color: Colors.yellow,
                      startWidth: 12,
                      endWidth: 12,
                    ),
                    GaugeRange(
                      startValue: 100,
                      endValue: 200,
                      color: Colors.orange,
                      startWidth: 12,
                      endWidth: 12,
                    ),
                    GaugeRange(
                      startValue: 200,
                      endValue: 300,
                      color: Colors.red,
                      startWidth: 12,
                      endWidth: 12,
                    ),
                    GaugeRange(
                      startValue: 300,
                      endValue: 400,
                      color: Colors.purple,
                      startWidth: 12,
                      endWidth: 12,
                    ),
                    GaugeRange(
                      startValue: 400,
                      color: Colors.transparent,
                      endValue: 800,
                      startWidth: 12,
                      endWidth: 12,
                    ),
                  ],
                  pointers: <GaugePointer>[
                    NeedlePointer(
                        value: widget.value,
                        enableAnimation: true,
                        animationType: AnimationType.bounceOut,
                        animationDuration: 2000,
                        needleStartWidth: 0,
                        needleEndWidth: 5,
                        needleColor: Colors.black,
                        knobStyle: KnobStyle(
                            color: Colors.white,
                            borderColor: Colors.black,
                            knobRadius: 0.06,
                            borderWidth: 0.04),
                        tailStyle: TailStyle(
                            color: Colors.black, width: 5, length: 0.15)),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        horizontalAlignment: GaugeAlignment.center,
                        verticalAlignment: GaugeAlignment.near,
                        widget: Container(
                            child: Text(
                                widget.value.toString().substring(0, ind + 2),
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold))),
                        angle: 90,
                        positionFactor: 0.6)
                  ])
            ]));
  }
}
