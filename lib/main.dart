import 'package:flutter/material.dart';
import 'package:learn2/screen/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("POYOYOYO"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: const Item(),
      ),
    );
  }
}
