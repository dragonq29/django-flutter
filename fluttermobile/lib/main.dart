import 'package:flutter/material.dart';
import 'package:fluttermobile/providers/task_provider.dart';
import 'package:fluttermobile/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(PlanApp());
}

class PlanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PlanProvider(),
        child: MaterialApp(
          title: '일정관리',
          home: HomeScreen()
    ));
  }
}
