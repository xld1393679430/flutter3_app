import 'package:flutter/material.dart';

class Demo09 extends StatelessWidget {
  const Demo09({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView.Builder',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
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
    for (int i = 0; i < 100; i++) {
      widgets.add(getRow(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.Builder'),
      ),
      body: ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (context, position) {
            return getRow(position);
          }),
    );
  }

  getRow(i) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widgets.add(getRow(widgets.length));
        });

        showDialog(
            context: context,
            builder: (context) {
              return Center(
                child: Text(
                  '点击的是第 ${i} 个',
                  style:
                      const TextStyle(fontSize: 18, color: Colors.cyanAccent),
                ),
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text('Row $i'),
      ),
    );
  }
}
