import 'package:flutter/material.dart';

import '../Demos3/Demos/Demo01.dart';

class Demos3 extends StatefulWidget {
  const Demos3({Key? key}) : super(key: key);

  @override
  State<Demos3> createState() => _Demos3State();
}

class _Demos3State extends State<Demos3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("实践教程"),
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
