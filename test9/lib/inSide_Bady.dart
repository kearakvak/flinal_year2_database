import 'package:flutter/material.dart';

class Bady extends StatefulWidget {
  const Bady({Key? key}) : super(key: key);

  @override
  State<Bady> createState() => _BadyState();
}

class _BadyState extends State<Bady> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 300,
      ),
    );
  }
}
