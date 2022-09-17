import 'package:flutter/material.dart';

class Demo17 extends StatelessWidget {
  const Demo17({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyHome();
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
        title: const Text('判断平台类型'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('点击判断当前平台类型'),
          onPressed: () {
            String platform = getPlatform();
            print(platform);
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      title: const Text('Alert'),
                      content: Text('当前平台是：$platform'));
                });
          },
        ),
      ),
    );
  }

  getPlatform() {
    final platform = Theme.of(context).platform;
    if (platform == TargetPlatform.iOS) {
      return 'ios';
    }
    if (platform == TargetPlatform.android) {
      return 'android';
    }
    if (platform == TargetPlatform.fuchsia) {
      return 'fuchsia';
    }
    return '未知平台';
  }
}
