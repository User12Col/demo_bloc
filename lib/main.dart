
import 'package:demo_bloc/view/counter_page/counter_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Bloc',
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}

