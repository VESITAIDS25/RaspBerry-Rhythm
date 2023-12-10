import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:provider/provider.dart';
import 'package:raspberry_app/ble/controller.dart';
import 'package:raspberry_app/widgets/text.dart';

import '../styles.dart';

class BleScreeb extends StatelessWidget {
  const BleScreeb({super.key});

  @override
  Widget build(BuildContext context) {
    final bleController = Provider.of<BleController>(context);
    return Scaffold(
        backgroundColor: bgLight,
        appBar: AppBar(
          backgroundColor: bgColor,
          title: Text('RHYTHM',
              style: AppTextStyles.heading5Bold.copyWith(
                color: Colors.white,
                letterSpacing: 3,
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
        ),
        body: Center(
          child: StreamBuilder<List<ScanResult>>(
            stream: bleController.scanResults,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              return ListView.builder(
                itemBuilder: (context, index) {
                  final data = snapshot.data[index];
                  return ListTile(
                    title: Text(data.device.name),
                    subtitle: Text(data.device.id.id),
                  );
                },
              );
            },
          ),
        ));
  }
}
