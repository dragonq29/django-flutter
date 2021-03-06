import 'dart:collection';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttermobile/models/plan.dart';
import 'package:http/http.dart' as http;

class PlanProvider extends ChangeNotifier {
  PlanProvider() {
    fetchSolutions();
  }

  List<Solution> _solutions = [];
  UnmodifiableListView<Solution> get allSolutions =>
      UnmodifiableListView(_solutions);
  fetchSolutions() async {
    try {
      final response = await http.get(Uri.parse('http://localhost:8000/solution/'));
      if (response.statusCode == 200) {
        var data = jsonDecode(utf8.decode(response.bodyBytes)) as List;
        _solutions =
            data.map<Solution>((json) => Solution.fromJson(json)).toList();
      }
    } catch (e) {
      print(e);

    }

  }
}