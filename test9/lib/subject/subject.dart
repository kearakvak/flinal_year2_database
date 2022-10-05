import 'package:flutter/material.dart';
import 'package:test9/textWord.dart';

import '../second_screen.dart';

class allsubject extends StatelessWidget {
  const allsubject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        color: Color.fromARGB(255, 39, 255, 255),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Word(
                word: 'Home Page',
                color: Color.fromARGB(255, 226, 108, 30),
              ),
            ),
            GestureDetector(
              child: ElevatedButton(
                onPressed: () {
                  // const Icon(Icons.person);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ),
                  );
                },
                child: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Divider(
              height: 10,
              color: Color.fromARGB(255, 221, 18, 18),
              indent: 70,
              thickness: 5,
            ),
          ],
        ),
      ),
    );
  }
}
