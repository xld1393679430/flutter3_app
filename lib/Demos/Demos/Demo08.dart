import 'package:flutter/material.dart';

class Demo08 extends StatelessWidget {
  const Demo08({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView(children: _lisView()),
    );
  }

  List<Widget> _lisView() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add(GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: Text(
                    '点击的是第 ${i + 1} 个',
                    style:
                        const TextStyle(fontSize: 18, color: Colors.cyanAccent),
                  ),
                );
              });
        },
        child: Padding(
            padding: const EdgeInsets.all(10), child: Text('第 ${i + 1} 个')),
      ));
    }
    return widgets;
  }
}
