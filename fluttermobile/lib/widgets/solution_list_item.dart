import 'package:flutter/material.dart';
import 'package:fluttermobile/models/plan.dart';

class SolutionListItem extends StatelessWidget {
  final Solution solution;
  SolutionListItem({required this.solution});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(solution.solution),
    );
  }
}
