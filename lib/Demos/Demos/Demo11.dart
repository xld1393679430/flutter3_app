import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Demo11 extends StatelessWidget {
  const Demo11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo11 本地存储",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: _increase,
            child: const Text('Add'),
          ),
          Text('$counter'),
          ElevatedButton(
            onPressed: _getCount,
            child: const Text('获取已缓存的值'),
          ),
        ],
      )),
    );
  }

  Future _increase() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = (prefs.getInt('counter') ?? 0) + 1;
    });
    await prefs.setInt('counter', counter);
  }

  Future<int?> _getCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = prefs.getInt('counter') ?? 0;
    });
    return null;
  }
}
