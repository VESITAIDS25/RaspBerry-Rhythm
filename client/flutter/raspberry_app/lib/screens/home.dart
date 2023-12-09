import 'package:flutter/material.dart';
import 'package:raspberry_app/graphs/cartasian.dart';
import 'package:raspberry_app/graphs/histogram.dart';
import 'package:raspberry_app/graphs/hr_progress.dart';
import 'package:raspberry_app/graphs/linear_guage.dart';
import 'package:raspberry_app/styles.dart';
import 'package:raspberry_app/widgets/text.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: bgLight,
          appBar: AppBar(
            backgroundColor: bgColor,
            title: Text('RHYTHM',
                style: AppTextStyles.heading5Bold.copyWith(
                  color: Colors.white,
                  letterSpacing: 3,
                  fontFamily: 'Poppins',
                )),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_outlined,
                    size: 20,
                    color: Colors.white,
                  ))
            ],
            bottom: const TabBar(
              isScrollable: true,
              labelColor: Colors.white,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              tabs: [
                Tab(
                  child: Text('Heart Rate', style: TextStyle(fontSize: 16)),
                ),
                Tab(
                  child: Text('Pedo Meter', style: TextStyle(fontSize: 16)),
                ),
                Tab(
                  child: Text('BMI', style: TextStyle(fontSize: 16)),
                ),
                Tab(
                  child: Text('Calories', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Heart_component(
                size: size,
              ),
              Pedo_component(),
              Center(
                child: Text("sf"),
              ),
              Center(
                child: Text("sf"),
              )
            ],
          )),
    );
  }
}

class Heart_component extends StatelessWidget {
  const Heart_component({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
      child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: size.height * 0.35,
          child: SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                  minimum: 0,
                  maximum: 100,
                  radiusFactor: 0.7,
                  showTicks: false,
                  showLabels: false,
                  axisLineStyle: const AxisLineStyle(
                    thickness: 0.08,
                    cornerStyle: CornerStyle.bothCurve,
                    color: Color.fromARGB(30, 0, 169, 181),
                    thicknessUnit: GaugeSizeUnit.factor,
                  ),
                  pointers: <GaugePointer>[
                    RangePointer(
                      value: 68,
                      width: 0.1,
                      color: secondaryColor,
                      pointerOffset: 0,
                      cornerStyle: CornerStyle.bothCurve,
                      sizeUnit: GaugeSizeUnit.factor,
                      animationType: AnimationType.ease,
                      animationDuration: 1200,
                    ),
                  ],
                  annotations: const <GaugeAnnotation>[
                    GaugeAnnotation(
                        positionFactor: 0,
                        angle: 90,
                        widget: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '68',
                              style: TextStyle(
                                  fontSize: 58,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  letterSpacing: 1.5),
                            ),
                            Text(
                              'BPM',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ],
                        ))
                  ]),
            ],
          ),
        ),
        const SizedBox(height: 0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Heart Rate Looks Good!',
              style: AppTextStyles.heading5Bold
                  .copyWith(color: Colors.white, fontFamily: 'Poppins'),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const SizedBox(height: 20),
        MyHomePage()
      ])),
    );
  }
}

class Pedo_component extends StatelessWidget {
  const Pedo_component({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/thumbnails/002/981/827/small/running-man-cartoon-character-jogging-free-vector.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    )),
                const SizedBox(width: 20),
                SizedBox(
                  width: 180,
                  child: Text(
                    'You have walked 2.5 km today',
                    style: AppTextStyles.heading6Bold
                        .copyWith(color: Colors.white, fontFamily: 'Poppins'),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            HorizontalProgress(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You are 20% closer to your goal!',
                  style: AppTextStyles.heading6Bold
                      .copyWith(color: Colors.white, fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Histogram(),
          ],
        ),
      ),
    );
  }
}
