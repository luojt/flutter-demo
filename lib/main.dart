
import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/route_manager.dart';
import 'main/main_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: MainPage(),
      onGenerateRoute: RouteManager.mapRouteWithSettings,
    );
  }
}
