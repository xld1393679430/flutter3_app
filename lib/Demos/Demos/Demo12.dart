import 'package:flutter/material.dart';

class Demo12 extends StatelessWidget {
  const Demo12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('组件封装'),
        CustomCard(
          index: 1,
          onPress: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const Center(
                    child: Text('点击了'),
                  );
                });
          },
        )
      ],
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.index, required this.onPress})
      : super(key: key);

  final int index;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Text("我是子组件"),
          const Text('------'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextButton(onPressed: onPress, child: const Text('Press')),
          )
        ],
      ),
    );
  }
}
