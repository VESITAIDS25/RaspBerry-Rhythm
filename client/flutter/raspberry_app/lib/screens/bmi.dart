import 'package:flutter/material.dart';
import 'package:raspberry_app/styles.dart';

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 30,
          top: 20,
          child: Image.asset('assets/images/person1.png'),
        ),
        Positioned(
          top: 40,
          right: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('WEIGHT',
                  style: TextStyle(fontSize: 22, color: Colors.white)),
              Text('60 kg',
                  style: TextStyle(fontSize: 25, color: secondaryColor))
            ],
          ),
        ),
        Positioned(
          top: 150,
          right: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('HEIGHT',
                  style: TextStyle(fontSize: 22, color: Colors.white)),
              Text('170 cm',
                  style: TextStyle(fontSize: 25, color: secondaryColor))
            ],
          ),
        ),
        Positioned(
          top: 250,
          right: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('AGE',
                  style: TextStyle(fontSize: 22, color: Colors.white)),
              Text('30 yrs',
                  style: TextStyle(fontSize: 25, color: secondaryColor))
            ],
          ),
        ),
        Positioned(
          top: 400,
          right: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('BMI',
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              Text('20.76',
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: heartColor))
            ],
          ),
        ),
      ],
    );
  }
}
