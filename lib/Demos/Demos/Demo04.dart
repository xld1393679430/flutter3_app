import 'package:flutter/material.dart';

class Demo04 extends StatelessWidget {
  const Demo04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo04',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyFadeTest(title: 'Fade Demo1'),
    );
  }
}

class MyFadeTest extends StatefulWidget {
  const MyFadeTest({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyFadeTest> createState() => _MyFadeTestState();
}

class _MyFadeTestState extends State<MyFadeTest> with TickerProviderStateMixin {
  late AnimationController controller;
  late CurvedAnimation curvedAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    curvedAnimation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: FadeTransition(
            opacity: curvedAnimation,
            child: const FlutterLogo(size: 100),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Fade",
          onPressed: () {
            controller.forward();
          },
          child: const Text(
            '点我渐现',
            style: TextStyle(fontSize: 13),
          ),
        ));
  }
}
