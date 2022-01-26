import 'package:flutter/cupertino.dart';
import 'package:fluttermobile/models/plan.dart';
import 'package:fluttermobile/widgets/solution_list_item.dart';

class SolutionList extends StatelessWidget {
  final List<Solution> solutions;
  SolutionList({required this.solutions});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getChildrenSolutions(),

    );
  }

  List<Widget> getChildrenSolutions() {
    return solutions.map((solution) => SolutionListItem(solution: solution)).toList();
  }
}
