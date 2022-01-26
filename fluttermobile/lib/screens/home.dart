import 'package:flutter/material.dart';
import 'package:fluttermobile/tabs/solutions.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 1, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('운명을 바꾸는 버킷리스트'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},),
          ],
          bottom: TabBar(
            controller: controller,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.audiotrack), text: '솔루션',)
            ],
          ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          SolutionTab(),
        ],
      ),

    );
  }
}
