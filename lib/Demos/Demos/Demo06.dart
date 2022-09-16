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
        child: ListView(children: [
          const Text('加载本地资源'),
          Image.asset('assets/images/shanghai.jpeg'),
          const Text('---------'),
          const Text('加载网络资源'),
          Image.network('https://docs.flutter.dev/assets/images/docs/owl.jpg')
        ]),
      ),
    );
  }
}
