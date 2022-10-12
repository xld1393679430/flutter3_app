import 'package:flutter/material.dart';

import 'Demos/entry.dart';
import 'Demos2/entry.dart';
import 'Demos3/entry.dart';
import 'Pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          unselectedLabelStyle: const TextStyle(fontSize: 11),
          labelStyle:
              const TextStyle(fontSize: 11, color: Colors.lightBlueAccent),
          tabs: const [
            Tab(
              text: "首页",
            ),
            Tab(
              text: "简单案例",
            ),
            Tab(
              text: "实用教程",
            ),
            Tab(text: "实践教程"),
          ],
          controller: controller,
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          Home(),
          Demos(),
          Demos2(),
          Demos3(),
        ],
      ),
    );
  }
}
