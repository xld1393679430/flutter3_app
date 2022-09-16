import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Demo05 extends StatelessWidget {
  const Demo05({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "异步加载",
      theme: ThemeData(primarySwatch: Colors.blue),
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
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('异步加载'),
        ),
        body: ListView.builder(
            itemCount: widgets.length,
            itemBuilder: (context, position) {
              return getRow(position);
            }));
  }

  Widget getRow(int i) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text("${widgets[i]['title']}"),
    );
  }

  Future loadData() async {
    var dataUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    http.Response response = await http.get(dataUrl);
    setState(() {
      widgets = jsonDecode(response.body);
    });
  }
}
