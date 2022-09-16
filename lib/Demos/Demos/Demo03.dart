import 'package:flutter/material.dart';

class Demo03 extends StatelessWidget {
  const Demo03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo03',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Demo03AppPage(),
    );
  }
}

class Demo03AppPage extends StatefulWidget {
  const Demo03AppPage({Key? key}) : super(key: key);

  @override
  State<Demo03AppPage> createState() => _Demo03AppPageState();
}

class _Demo03AppPageState extends State<Demo03AppPage> {
  bool toggle = true;
  void _toggle() {
    toggle = !toggle;
    print(toggle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("添加或删除一个组件"),
      ),
      body: Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: "Update Text",
        child: const Icon(Icons.update),
      ),
    );
  }

  _getToggleChild() {
    if (toggle) {
      return const Text("Toggle One");
    } else {
      return ElevatedButton(onPressed: () {}, child: const Text("Toggle Two"));
    }
  }
}
