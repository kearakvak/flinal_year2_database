import 'package:flutter/material.dart';
import 'package:test9/textWord.dart';
import 'components/profile_menu.dart';
import 'components/profile_pic.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    Key? key,
    this.student,
    this.St_ID,
  }) : super(key: key);
  final String? student;
  final String? St_ID;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Second Screen',
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              ProfilePic(),
              SizedBox(height: 20),
              Word(
                word: student ?? "Student Name",
                color: Colors.black,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Word(
                    word: "ID: ",
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  Word(
                    word: St_ID ?? "000000000000 ",
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ],
              ),
              ProfileMenu(
                text: "វត្តមាន",
                icon: "assets/images/photo.webp",
                press: () => {},
              ),
              ProfileMenu(
                text: "Score",
                icon: "assets/images/photo.webp",
                press: () {},
              ),
              ProfileMenu(
                text: "Phone",
                icon: "assets/images/photo.webp",
                press: () {},
              ),
              ProfileMenu(
                text: "...",
                icon: "assets/images/photo.webp",
                press: () {},
              ),
            ],
          ),
        ),
      );
}
