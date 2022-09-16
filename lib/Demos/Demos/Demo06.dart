import 'package:flutter/material.dart';

class Demo06 extends StatelessWidget {
  const Demo06({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '静态资源加载',
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('静态资源加载'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('哈哈'),
            Image.asset('assets/images/shanghai.jpeg')
          ],
        ),
      ),
    );
  }
}
