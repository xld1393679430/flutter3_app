import 'package:flutter/material.dart';

import '../Demos/Demos/Demo01.dart';

class Demos2 extends StatefulWidget {
  const Demos2({Key? key}) : super(key: key);

  @override
  State<Demos2> createState() => _Demos2State();
}

class _Demos2State extends State<Demos2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("实用教程"),
        ),
        body: Center(
            child: ListView(
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Demo01()));
              },
              child: const Text('To Demo01- 累加器'),
            ),
          ],
        )));
  }
}
