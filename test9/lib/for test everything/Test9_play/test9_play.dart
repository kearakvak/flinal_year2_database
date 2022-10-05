import 'package:flutter/material.dart';

import 'package:test9/icon_to_new_page.dart';
import 'package:test9/textWord.dart';
import 'home.dart';

class HomePage9 extends StatefulWidget {
  const HomePage9({Key? key}) : super(key: key);

  @override
  State<HomePage9> createState() => _HomePage9State();
}

class _HomePage9State extends State<HomePage9> {
  int _selectedIndex = 0;

  // void _navigateBottomBar(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  // final List<Widget> _pages = [
  //   UserHome(),
  //   UserAccount(),
  //   UserMessage(),
  //   UserSettings(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        //backgroundColor: Colors.amberAccent,
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.greenAccent.shade100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://images.moviesanywhere.com/f3e7f0495c850b86dd1da84068050363/fabe2799-c335-462c-8608-a5d06b79c9c7.jpg',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SafeArea(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Word(
                              word: 'Name',
                              fontSize: 30,
                            ),
                          ),
                          const Word(
                            word: 'Phone',
                          ),
                          const Word(
                            word: 'Address',
                          ),
                          // Container(
                          //   color: Color.fromARGB(255, 0, 0, 0),
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // const Subject(SubjectWord: 'Homepage'),
            // const Subject(SubjectWord: 'Math'),
            // const Subject(SubjectWord: 'Homepage'),
            // const Subject(SubjectWord: 'Math'),
            // const Subject(SubjectWord: 'Homepage'),

            Expanded(
              child: Container(
                height: double.infinity,
                color: Color.fromRGBO(39, 255, 255, 1),
                child: Column(
                  children: const [
                    Subject(
                      SubjectWord: 'English',
                      icon: Icon(Icons.language),
                      newPage: 'English',
                    ),
                    Subject(
                      SubjectWord: 'Math',
                      icon: Icon(Icons.multiline_chart_sharp),
                      newPage: 'Math',
                    ),
                    Subject(
                      SubjectWord: 'Social Studies',
                      icon: Icon(Icons.satellite_alt_sharp),
                      newPage: 'Social Studies',
                    ),
                    Subject(
                      SubjectWord: 'Physical Education',
                      icon: Icon(Icons.satellite_alt_sharp),
                      newPage: 'Physical Education',
                    ),
                    Subject(
                      SubjectWord: 'Science',
                      icon: Icon(Icons.satellite_alt_sharp),
                      newPage: 'Science',
                    ),
                    Subject(
                      SubjectWord: 'Khmer',
                      icon: Icon(Icons.satellite_alt_sharp),
                    ),
                    // ListTile(
                    //   leading: Icon(Icons.alarm_off_outlined),
                    //   title: Word(
                    //     word: 'Home Page',
                    //     color: Color.fromARGB(255, 226, 108, 30),
                    //   ),
                    //   trailing: Icon(Icons.arrow_forward_ios_outlined),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        // leading: Icon(Icons.arrow_back_ios_new),
        backgroundColor: Colors.pink[300],
        title: Text('Student'),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () async {
                  showSearch(context: context, delegate: CitySearch());
                },
                icon: Icon(
                  Icons.search_rounded,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 50,
              ),
            ],
          )
        ],
      ),
      body: UserHome(),
    );
  }
}

class CitySearch extends SearchDelegate<String> {
  final cities = [
    'Panha',
    'davit',
    'lisa',
    'toyota',
    'sry nin',
  ];

  final recentCities = [
    'Berlin',
    'Munich',
    'London',
  ];

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            // if (query.isEmpty) {
            //   close(context, null);
            // } else {
            //   query = '';
            //   showSuggestions(context);
            // }
          },
        )
      ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => HomePage9(),
        //  onPressed: () => close(context, null),
      );

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_city, size: 120),
            const SizedBox(height: 48),
            Text(
              query,
              style: TextStyle(
                color: Colors.black,
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentCities
        : cities.where((city) {
            final cityLower = city.toLowerCase();
            final queryLower = query.toLowerCase();

            return cityLower.startsWith(queryLower);
          }).toList();

    return buildSuggestionsSuccess(suggestions);
  }

  Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];
          final queryText = suggestion.substring(0, query.length);
          final remainingText = suggestion.substring(query.length);

          return ListTile(
            onTap: () {
              query = suggestion;

              // 1. Show Results
              showResults(context);

              // 2. Close Search & Return Result
              // close(context, suggestion);

              // 3. Navigate to Result Page
              //  Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (BuildContext context) => ResultPage(suggestion),
              //   ),
              // );
            },
            leading: Icon(Icons.location_city),
            // title: Text(suggestion),
            title: RichText(
              text: TextSpan(
                text: queryText,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: remainingText,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
}
