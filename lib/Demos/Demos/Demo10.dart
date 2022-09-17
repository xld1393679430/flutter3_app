import 'package:flutter/material.dart';

class Demo10 extends StatelessWidget {
  const Demo10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: "Demo10 Form表单",
    //   theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //       textSelectionTheme:
    //           const TextSelectionThemeData(selectionColor: Colors.red)),
    //   home: const MyHome(),
    // );

    return const MyHome();
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String? _errorText;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo10 Form表单"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
                controller: controller,
                onSubmitted: (text) {
                  handleSubmit();
                },
                decoration: InputDecoration(
                    labelText: 'Text Field',
                    hintText: 'THis is hint',
                    errorText: _getErrorText())),
            ElevatedButton(
                onPressed: () {
                  handleSubmit();
                },
                child: const Text('Submit')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('返回上一页'))
          ],
        ),
      ),
    );
  }

  _getErrorText() {
    return _errorText;
  }

  bool isEmail(String text) {
    String emailRegexp =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|'
        r'(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
        r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(emailRegexp);

    return regExp.hasMatch(text);
  }

  void handleSubmit() {
    setState(() {
      if (controller.text == '') {
        _errorText = null;
      } else if (!isEmail(controller.text)) {
        _errorText = 'Error: This is not email';
      } else {
        _errorText = null;
      }
    });

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: const Text('Alert'),
              content: Text('你输入的是： ${controller.text}'));
        });
  }
}
