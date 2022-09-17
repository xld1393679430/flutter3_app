import 'package:flutter/material.dart';

class Demo13 extends StatelessWidget {
  const Demo13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Demo13 布局",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyHome());
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
    return Theme(
        data: ThemeData(
          primaryColor: Colors.lightGreenAccent,
          // brightness:
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Demo13 布局"),
          ),
          body: ListView(
            children: [
              Center(
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: const Text(
                    '111',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ),
              Center(
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ),
              Center(
                child: Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                    child: Stack(
                      alignment: const Alignment(-1, 0),
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://avatars3.githubusercontent.com/u/14101776?v=4',
                          ),
                        ),
                        Container(
                          color: Colors.black45,
                          child: const Text(
                            'Flutter',
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
