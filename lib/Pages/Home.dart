import 'package:flutter/material.dart';
import 'package:flutter3_app/http/core/hi_net.dart';

import '../http/request/test_request.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("首页"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () async {
                TestRequest request = TestRequest();
                request.add('aa', '1').add('bb', '22');
                var result = await HiNet.getInstance()?.fire(request);
                print("result: $result");
              },
              child: const Text('点我')),
        ));
  }
}
