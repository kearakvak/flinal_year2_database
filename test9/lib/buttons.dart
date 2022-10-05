import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    this.ColorAround,
    this.ColorText,
    this.fontSize,
    this.edgeInsets,
    this.left,
    this.right,
    this.word,
  }) : super(key: key);
  final Color? ColorAround;
  final Color? ColorText;
  final double? fontSize;
  final EdgeInsets? edgeInsets;
  final double? left;
  final double? right;
  final String? word;

  //final Icons icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left ?? 20, 0, right ?? 10, 0),
      child: GestureDetector(
        child: ElevatedButton(
          style: TextButton.styleFrom(
            padding: edgeInsets ??
                const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            textStyle: const TextStyle(fontSize: 28),
            primary: const Color.fromARGB(255, 74, 77, 235),
            onSurface: const Color.fromARGB(255, 240, 14, 14),
            backgroundColor:
                ColorAround ?? const Color.fromARGB(255, 99, 177, 241),
          ),
          onPressed: () {
            // const Icon(Icons.person);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => SecondScreen(),
            //   ),
            // );
          },
          child: Text(
            word ?? "Advent",
            style: TextStyle(
              fontSize: 20,
              color: ColorText ?? Colors.yellowAccent,
            ),
          ),
        ),
      ),
    );
  }
}
