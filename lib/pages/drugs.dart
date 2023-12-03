import 'package:flutter/material.dart';

class Drugs extends StatelessWidget {
  const Drugs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 149, 203, 247),
        height: 300,
        width: 300,
        child: const Center(
            child: Text(
          'durg',
          style: TextStyle(fontSize: 20, color: Colors.red),
        )),
      ),
    );
  }
}
