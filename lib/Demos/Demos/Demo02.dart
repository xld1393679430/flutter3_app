import 'package:flutter/material.dart';

class Demo02 extends StatelessWidget {
  const Demo02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("布局展示"),
      ),
      body: Container(
          // margin: const EdgeInsetsDirectional.all(20),
          padding:
              const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 50),
          color: Colors.cyanAccent[100],
          child: ListView(
            shrinkWrap: false,
            children: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(left: 20, right: 70)),
                  onPressed: () {},
                  child: const Text("Hello"),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  width: 220,
                  height: 60,
                  color: Colors.grey[300],
                  child: const Text(
                    "文本靠右上",
                    style: TextStyle(
                        fontFamily: 'Georgia',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  width: 240,
                  height: 120,
                  color: Colors.redAccent,
                  child: Center(
                    child: Container(
                      constraints: const BoxConstraints(
                          maxWidth: 220,
                          minHeight: 80,
                          maxHeight:
                              120), // constraints属性可以设置maxHeight/minHeight
                      // width: 140,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.lightGreenAccent,
                      ),
                      child: const Text(
                        "constraints设置minHeight",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  width: 220,
                  height: 80,
                  color: Colors.cyan,
                  child: Stack(
                    children: [
                      Positioned(
                          left: 24,
                          bottom: 10,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration:
                                const BoxDecoration(color: Colors.green),
                            child: const Text(
                              "Stack+Positioned实现定位",
                              style: TextStyle(fontSize: 14),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  color: Colors.lightGreenAccent,
                  child: Center(
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..rotateZ(15 * 3.1415926 / 180),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(color: Colors.red),
                        child: const Text(
                          'Transform',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  width: 220,
                  height: 80,
                  color: Colors.amber,
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 60,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment(0, 0.6),
                              colors: [
                            Colors.lightGreenAccent,
                            Colors.yellowAccent
                          ])),
                      padding: const EdgeInsets.all(8),
                      child: const Text(
                        '渐变色',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  width: 220,
                  height: 80,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: const Text(
                        "圆角",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  width: 100,
                  height: 100,
                  color: Colors.yellowAccent,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.red[400],
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.indigoAccent,
                                offset: Offset(0, 2),
                                blurRadius: 4),
                            BoxShadow(
                                color: Colors.pink,
                                offset: Offset(0, 6),
                                blurRadius: 20)
                          ]),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red[400], shape: BoxShape.circle),
                      padding: const EdgeInsets.all(10),
                      width: 140,
                      height: 140,
                      child: const Text(
                        '圆形',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  width: 320,
                  height: 120,
                  color: Colors.lightGreenAccent,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(color: Colors.cyanAccent),
                      child: const Text(
                        "字体间距",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  width: 200,
                  height: 120,
                  color: Colors.lightGreenAccent,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red[400],
                      ),
                      padding: const EdgeInsets.all(10),
                      child: RichText(
                        text: const TextSpan(
                            style: TextStyle(
                                fontSize: 18, color: Colors.lightGreenAccent),
                            children: [
                              TextSpan(text: "Lorem"),
                              TextSpan(
                                  text: '内联样式',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.indigoAccent,
                                      fontWeight: FontWeight.w300))
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 140,
                  child: Center(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.lightGreen,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "一行文本省略--窗前明月光举头望明月",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.pink),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 140,
                  child: Center(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.lightGreen,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "两行文本省略--窗前明月光举头望明月窗前明月光举头望明月窗前明月光举头望明月",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.pink),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
