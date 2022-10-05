import 'package:flutter/material.dart';
import 'package:test9/buttons.dart';
import 'package:test9/textWord.dart';
import '../../second_screen.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final List<String> imageList = [
    'Panha San',
    'On Srey Nin',
    'Sothy Rith',
    'Son Thanin',
    'Sokha',
    'visa',
    'Tevy',
    'Rosa',
    'Davit',
    'canda',
    'panda',
    'kannada',
  ];

  final List<String> IDList = [
    "0000000001",
    "0000000002",
    '0000000003',
    "0000000004",
    "0000000005",
    "0000000006",
    "0000000007",
    "0000000008",
    "0000000009",
    "0000000010",
    "0000000011",
    "0000000012",
    "0000000013",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  imageList.length,
                  (index) {
                    return Container(
                      color: Colors.white,
                      height: 150,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                                margin: const EdgeInsets.only(bottom: 1.0),
                                height: 200.0,
                                width: double.infinity,
                                color: Color.fromARGB(255, 130, 231, 218),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Word(
                                      //   word: imageList[index],
                                      //   color: Color.fromARGB(255, 233, 21, 67),
                                      //   fontSize: 20,
                                      // ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Word(
                                            word: imageList[index],
                                            color: Color.fromARGB(
                                                255, 233, 21, 67),
                                            fontSize: 20,
                                          ),
                                          // const SizedBox(
                                          //   width: 20,
                                          // ),
                                          Row(
                                            children: const [
                                              Buttons(
                                                // left: 50,
                                                right: 2,
                                                word: "Attendance",
                                                edgeInsets:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 10),
                                              ),
                                              Buttons(
                                                left: 5,
                                                right: 5,
                                                word: 'late',
                                                ColorText: Colors.black,
                                                ColorAround: Color.fromARGB(
                                                    255, 251, 255, 8),
                                                //  ColorText: Colors.blueAccent,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),

                                      const SizedBox(
                                        height: 5,
                                      ),

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Word(
                                            word: 'Gender',
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Row(
                                            children: const [
                                              Buttons(
                                                left: 5,
                                                right: 5,
                                                word: 'Permission',
                                                ColorText: Colors.black,
                                                ColorAround: Color.fromARGB(
                                                    255, 49, 238, 58),
                                                //  ColorText: Colors.blueAccent,
                                              ),
                                              Buttons(
                                                left: 1,
                                                right: 1,
                                                word: 'Absent',
                                                ColorAround: Colors.redAccent,
                                              ),
                                              //Buttons(),],)
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Word(
                                            word: 'ID: ',
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                          Word(
                                            word: IDList[index],
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ],
                                      )
                                      // Text('Gender'),
                                    ],
                                  ),
                                )),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 1.0),
                              height: 200.0,
                              width: double.infinity,
                              color: Color.fromARGB(255, 130, 231, 218),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SecondScreen(
                                            student: imageList[index],
                                            St_ID: IDList[index],
                                          ),
                                        ),
                                      );
                                    },
                                    icon: Icon(Icons.arrow_forward_ios_rounded),
                                    iconSize: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class string {}
