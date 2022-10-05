import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test9/textWord.dart';
import 'package:test9/text_id_password.dart';
import 'for test everything/Test9_play/test9_play.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _IDController = TextEditingController();
  final _passwordController = TextEditingController();
  // final List<Widget> _Body = [
  //   Bady(),
  // ];

  Future sigIn() async {
    Firebase.initializeApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 255, 200),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Icon(
                  Icons.school_sharp,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 150,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Word(
                        word: 'Welcome',
                        fontSize: 50,
                        color: Color.fromARGB(131, 88, 96, 212),
                      ),
                      SizedBox(height: 10),
                      Word(
                        word: 'Sing in to Continue',
                        fontSize: 20,
                        color: Color.fromARGB(255, 40, 93, 207),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Texword(
                  text: 'ID',
                  see: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                Texword(
                  text: 'Password',
                  see: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 10),
                        textStyle: const TextStyle(fontSize: 28),
                        primary: Color.fromARGB(255, 74, 77, 235),
                        onSurface: const Color.fromARGB(255, 240, 14, 14),
                        backgroundColor: Color.fromARGB(255, 99, 177, 241),
                      ),
                      onPressed: () {
                        const Icon(Icons.person);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage9(),
                          ),
                        );
                      },
                      child: const Word(
                        word: 'Sing In',
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Word(
                      word: 'Not a member? ',
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                    const Word(
                      word: '  Register Now',
                      fontSize: 16,
                      color: Color.fromARGB(255, 24, 99, 24),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
