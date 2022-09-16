import 'package:flutter/material.dart';

class Demo02 extends StatelessWidget {
  const Demo02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "呵呵",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("布局展示"),
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(left: 20, right: 70)),
            onPressed: () {},
            child: const Text("Hello"),
          ),
        ),
      ),
    );
  }
}
