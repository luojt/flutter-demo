import 'package:flutter_demo/commom/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('首页'),
          backgroundColor: AppColors.gray_F3F3F3,
        ),
        child: Container(
          color: Colors.black,
          height: 400,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: 200,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "正中",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Positioned.fill(
                      top: 10,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          child: Container(
                            child: Text(
                              "上中",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      left: 10,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Container(
                            child: Text(
                              "左中",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      right: 10,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          child: Container(
                            child: Text(
                              "右中",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      bottom: 10,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          child: Container(
                            child: Text(
                              "右中",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        color: Colors.green,
                        child: Text(
                          "左上",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Container(
                        color: Colors.red,
                        child: Text(
                          "右上",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: Container(
                        color: Colors.blue,
                        child: Text(
                          "左下",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: Container(
                        color: Colors.yellow,
                        child: Text(
                          "右下",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
