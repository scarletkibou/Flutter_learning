import 'package:flutter/material.dart';

class ThaiFlag extends StatelessWidget {
  const ThaiFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.red,
          height: 30,
        ),
        Container(
          color: Colors.white,
          height: 30,
        ),
        Container(
          color: Colors.blue,
          height: 30,
        ),
        Container(
          color: Colors.white,
          height: 30,
        ),
        Container(
          color: Colors.red,
          height: 30,
        ),
        FilledButton(
            onPressed: () {},
            child: const Text(
              'Click',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
      ],
    );
  }

  ayo() {}
}
