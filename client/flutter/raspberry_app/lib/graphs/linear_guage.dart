import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class LineargaugeData extends StatelessWidget {
  const LineargaugeData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfLinearGauge(
      animateAxis: true,
      minimum: 50,
      maximum: 500,
      // useRangeColorForAxis: true,
      showAxisTrack: false,
      showTicks: false,
      ranges: const <LinearGaugeRange>[
        LinearGaugeRange(
          edgeStyle: LinearEdgeStyle.startCurve,
          startValue: 0,
          endValue: 100,
          color: Colors.yellow,
          startWidth: 8,
          endWidth: 8,
        ),
        LinearGaugeRange(
          edgeStyle: LinearEdgeStyle.bothFlat,
          startValue: 100,
          endValue: 200,
          color: Colors.orange,
          startWidth: 8,
          endWidth: 8,
        ),
        LinearGaugeRange(
          edgeStyle: LinearEdgeStyle.bothFlat,
          startValue: 200,
          endValue: 300,
          color: Colors.red,
          startWidth: 8,
          endWidth: 8,
        ),
        LinearGaugeRange(
          edgeStyle: LinearEdgeStyle.bothFlat,
          startValue: 300,
          endValue: 400,
          color: Colors.purple,
          startWidth: 8,
          endWidth: 8,
        ),
        LinearGaugeRange(
          edgeStyle: LinearEdgeStyle.endCurve,
          startValue: 400,
          endValue: 800,
          startWidth: 8,
          endWidth: 8,
        ),
      ],
      markerPointers: [
        LinearWidgetPointer(
          enableAnimation: true,
          value: 50,
          offset: 3,
          child: circle(50.0),
          position: LinearElementPosition.outside,
        ),
        LinearWidgetPointer(
          enableAnimation: true,
          value: 100,
          child: circle(100.0),
          offset: 3,
          position: LinearElementPosition.outside,
        ),
        LinearWidgetPointer(
          position: LinearElementPosition.outside,
          offset: 3,
          value: 200,
          child: circle(200.0),
        ),
        LinearWidgetPointer(
          position: LinearElementPosition.outside,
          offset: 3,
          value: 300,
          child: circle(300.0),
        ),
        LinearWidgetPointer(
          position: LinearElementPosition.outside,
          offset: 3,
          value: 400,
          child: circle(400.0),
        ),
        LinearWidgetPointer(
          position: LinearElementPosition.outside,
          value: 500,
          offset: 2,
          child: circle(500.0),
        ),
      ],
    );
  }
}

String getText(double aqi) {
  if (aqi <= 50) {
    return "Good";
  } else if (50 < aqi && aqi <= 100) {
    return "Satisfactory";
  } else if (100 < aqi && aqi <= 200) {
    return "Moderate";
  } else if (200 < aqi && aqi <= 300) {
    return "Poor";
  } else if (300 < aqi && aqi <= 400) {
    return "V.Poor";
  } else if (aqi >= 400) {
    return "Serve";
  }
  return "";
}

Color? getColor(double aqi) {
  if (aqi <= 50) {
    return Colors.green;
  } else if (50 < aqi && aqi <= 100) {
    return Colors.amber.withOpacity(0.8);
  } else if (100 < aqi && aqi <= 200) {
    return Colors.orange;
  } else if (200 < aqi && aqi <= 300) {
    return Colors.red;
  } else if (300 < aqi && aqi <= 400) {
    return Colors.purple;
  } else if (aqi >= 400) {
    return Colors.red[800];
  }
  return Colors.white;
}

Widget circle(aqi) {
  return SizedBox(
    height: 44,
    child: Column(
      children: [
        Text(
          getText(aqi).length > 5 ? getText(aqi).substring(0, 3) : getText(aqi),
          style: TextStyle(fontWeight: FontWeight.bold, color: getColor(aqi)),
        ),
        // Container(
        //   margin: const EdgeInsets.only(top: 8),
        //   height: 20,
        //   width: 20,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(50), color: getColor(aqi)),
        // ),
        Icon(
          Icons.location_pin,
          color: getColor(aqi),
        )
      ],
    ),
  );
}
