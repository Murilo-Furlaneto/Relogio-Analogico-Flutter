import 'package:flutter/material.dart';
import 'package:relogio_analogico/clock/analogic_circle.dart';
import 'package:relogio_analogico/clock/hour_pointer.dart';
import 'package:relogio_analogico/clock/minute_pointer.dart';

import 'second_pointer.dart';

class ClockView extends StatelessWidget {
  const ClockView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                 const AnalogicCircle(),
                 const SecondPointer(),
                 const MinutePointer(),
                 const HourPointer(),
                  Container(
                      height: 16,
                      width: 16,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle)),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
