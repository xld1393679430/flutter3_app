import 'package:flutter/material.dart';

class Demo16 extends StatelessWidget {
  const Demo16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo16 手势系统",
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        handleEvent('onTap  点击');
      },
      onLongPress: () {
        handleEvent('onLongPress 长按');
      },
      onVerticalDragEnd: (value) {
        handleEvent('onVerticalDragEnd 垂直拖拽');
      },
      onHorizontalDragEnd: (value) {
        handleEvent('onHorizontalDragEnd 水平拖拽');
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('手势系统'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Tap, Long Press，Swipe Horizontally or Vertically",
                style: TextStyle(backgroundColor: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }

  handleEvent(String event) {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Text(
              '触摸事件：$event',
              style: const TextStyle(fontSize: 14),
            ),
          );
        });
  }
}
