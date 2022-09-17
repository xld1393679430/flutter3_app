import 'package:flutter/material.dart';

class Demo10_2 extends StatelessWidget {
  const Demo10_2({Key? key}) : super(key: key);

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
  var _email;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form表单'),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value != null && value.contains('@')) {
                    return null;
                  }
                  return 'Not a valid email';
                },
                onSaved: (value) {
                  _email = value;
                },
                decoration: const InputDecoration(
                    hintText: 'Enter Your Email', labelText: 'Email'),
              ),
              ElevatedButton(onPressed: _submit, child: const Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    final form = formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: const Text('Alert'), content: Text('Email: $_email'));
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
              title: Text('Alert'), content: Text('Email: 不合法'));
        },
      );
    }
    // showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //           title: const Text('Alert'), content: Text('你输入的是： $_email'));
    //     });
  }
}
