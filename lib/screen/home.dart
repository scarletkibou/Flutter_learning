import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.orange,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: const Text(
          'POYOYO',
          style: TextStyle(
            fontSize: 40,
            letterSpacing: 5,
          ),
        ),
      ),
    );
  }
}
