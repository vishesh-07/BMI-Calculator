import 'package:flutter/material.dart';
import 'package:bmi_calculator/bmi.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
 // Color selection = Colors.greenAccent[400];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMI(),
      // theme: ThemeData(
      //  //s brightness: Brightness.dark,
      //   unselectedWidgetColor:selection
      //   selec
      // ),
    );
  }
}