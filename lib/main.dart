import 'package:flutter/material.dart';
import 'page/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'copy_facebook',
        debugShowCheckedModeBanner: false,
        home: HomePages());
  }
}
