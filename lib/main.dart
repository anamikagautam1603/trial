// import 'package:app_example_widget/my_stateful_widget.dart';
import 'package:app_example_widget/my_stateful_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Lets learn about Widget LifeCycle!
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Widget LifeCycle ',
        theme: ThemeData.light(),
        home: const MyStatefulWidget());
  }
}
