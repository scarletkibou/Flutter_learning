import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int qty = 5;

  void addQTY() {
    setState(() {
      qty += 1;
    });
  }

  void subtractQTY() {
    setState(() {
      qty <= 0 ? qty = 0 : qty = qty - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$qty',
              style:
                  const TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          OutlinedButton(
              onPressed: addQTY,
              child: const Text('+',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold))),
          const SizedBox(height: 20),
          OutlinedButton(
              onPressed: subtractQTY,
              child: const Text('-',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }
}
