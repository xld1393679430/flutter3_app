import 'package:flutter/material.dart';

class Demo15 extends StatelessWidget {
  const Demo15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Demo15 Drawer导航",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

// class _MyHomeState extends State<MyHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Drawer(
//       elevation: 20,
//       child: ListTile(
//         leading: const Icon(Icons.change_history),
//         title: const Text('Screen2'),
//         onTap: () {},
//       ),
//     ));
//   }
// }

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 20,
        child: ListTile(
            leading: const Icon(Icons.change_history),
            title: const Text('Screen2'),
            onTap: () {}),
      ),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(),
    );
  }
}
