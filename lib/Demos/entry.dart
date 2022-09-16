import 'package:flutter/material.dart';
import 'package:flutter3_app/Demos/Demos/Demo01.dart';
import 'package:flutter3_app/Demos/Demos/Demo02.dart';
import 'package:flutter3_app/Demos/Demos/Demo03.dart';
import 'package:flutter3_app/Demos/Demos/Demo04.dart';
import 'package:flutter3_app/Demos/Demos/Demo05.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    // initialRoute: '/',
    // routes: {
    //   '/demo01': (context) => const Demo01(),
    //   '/demo02': (context) => const Demo02(),
    //   '/demo03': (context) => const Demo03(),
    //   '/demo04': (context) => const Demo04(),
    // },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Demo Entry"),
        ),
        body: Center(
          child: Column(
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Demo01()));
                },
                child: const Text('To Demo01- 累加器'),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Demo02()));
                },
                child: const Text('To Demo02-布局展示'),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Demo03()));
                },
                child: const Text('To Demo03-状态切换'),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Demo04()));
                },
                child: const Text('To Demo04-实现动画'),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Demo05()));
                },
                child: const Text('To Demo05-异步加载'),
              ),
            ],
          ),
        ));
  }
}
