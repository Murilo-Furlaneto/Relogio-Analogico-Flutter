import 'package:flutter/material.dart';

import '../clock/clock_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return const Scaffold(
           body: Center(child: ClockView(),),
       );
  }
}