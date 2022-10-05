import 'package:flutter/material.dart';

class Texword extends StatelessWidget {
  final String? text;
  Texword({Key? key, required this.text, this.see}) : super(key: key);
  final bool? see;
  final _IDController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            obscureText: see ?? false,
            style: const TextStyle(color: Color.fromARGB(255, 67, 142, 202)),
            controller: _IDController,
            decoration: InputDecoration(
              //border: InputBorder.none,
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 28, 30, 31)),
              hintText: text ?? 'No everthing',
            ),
          ),
        ),
      ),
    );
  }
}
