import 'package:flutter/material.dart';

class Demo07 extends StatelessWidget {
  const Demo07({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "手势系统",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late CurvedAnimation curvedAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));

    curvedAnimation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("手势系统--双击Logo"),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: GestureDetector(
                onDoubleTap: () {
                  print(controller.isCompleted);
                  if (controller.isCompleted) {
                    controller.reverse();
                  } else {
                    controller.forward();
                  }
                },
                child: RotationTransition(
                  turns: curvedAnimation,
                  child: const FlutterLogo(
                    size: 200.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
