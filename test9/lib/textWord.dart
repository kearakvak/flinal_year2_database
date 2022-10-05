import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Word extends StatelessWidget {
  const Word({Key? key, required this.word, this.fontSize, this.color})
      : super(key: key);
  final String word;
  final double? fontSize;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      word,
      style: TextStyle(
        fontSize: fontSize ?? 30,
        color: color ?? Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
