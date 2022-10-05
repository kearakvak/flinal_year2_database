import 'package:flutter/material.dart';
import 'textWord.dart';

class StudetInformation_sub extends StatelessWidget {
  StudetInformation_sub({Key? key, this.Subject}) : super(key: key);
  final String? Subject;

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
  final List<double> math = [];
  final _IDController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Second Screen',
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
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
                                flex: 6,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Word(
                                          word: imageList[index],
                                          color:
                                              Color.fromARGB(255, 233, 21, 67),
                                          fontSize: 20,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),

                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            const Word(
                                              word: 'Gender',
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  height: 50,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                  child: const TextField(
                                                    keyboardType:
                                                        TextInputType.number,
                                                    textAlign: TextAlign.center,
                                                    // controller: _IDController,
                                                    // keyboardAppearance: NumberInputElement(),
                                                    decoration: InputDecoration(
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.red,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      hintStyle: TextStyle(
                                                          color: Colors.amber),
                                                      hintText: 'Score',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Word(
                                          word: 'ID',
                                          color: Colors.black,
                                        ),
                                        // Text('Gender'),
                                      ],
                                    ),
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
        ),
      );
}
