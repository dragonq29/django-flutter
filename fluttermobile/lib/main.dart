import 'package:flutter/material.dart';
import 'package:fluttermobile/screens/home.dart';

void main() {
  runApp(PlanApp());
}

class PlanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '일정관리',
      home: HomeScreen()
    );
  }
}
