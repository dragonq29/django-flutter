import 'package:flutter/cupertino.dart';
import 'package:fluttermobile/providers/task_provider.dart';
import 'package:fluttermobile/widgets/solution_list.dart';
import 'package:provider/provider.dart';

class SolutionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<PlanProvider>(
        builder: (context, value, child) => SolutionList(
          solutions: value.allSolutions),
      ),
    );
  }
}