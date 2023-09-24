import 'package:doctor/colors.dart';
import 'package:doctor/hidden_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  Hive.initFlutter();

  var box = await Hive.openBox('mybox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primary,
        scaffoldBackgroundColor: Color(0xffffcceb),
      ),
      home: hiddenDrawer(),
    );
  }
}
