import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_app/presentation/resources/route_manager.dart';
import 'package:mvvm_app/presentation/resources/them_manager.dart';

class MyApp extends StatefulWidget {

  MyApp._internal();
  static final MyApp instance = MyApp._internal();
  factory MyApp()=> instance;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splash ,
    );
  }
}
