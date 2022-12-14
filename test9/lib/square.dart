import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;

  MySquare({required this.child});

  get height => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 400,
        color: Colors.deepPurple[200],
        child: Text(child),
      ),
    );
  }
}
