import 'package:flutter/material.dart';
import 'package:flutter3_app/Demos/entry.dart';

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
  late TabController controller = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: const [
            Tab(
              text: "首页",
              icon: Icon(
                Icons.home,
                size: 22,
              ),
            ),
            Tab(
              text: "Demos",
              icon: Icon(
                Icons.exit_to_app,
                size: 22,
              ),
            )
          ],
          controller: controller,
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          Home(),
          Demos(),
        ],
      ),
    );
  }
}
