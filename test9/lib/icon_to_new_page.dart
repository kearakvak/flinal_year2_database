import 'package:flutter/material.dart';
import 'information_St_Sub.dart';

class Subject extends StatelessWidget {
  const Subject(
      {Key? key,
      this.SubjectWord,
      this.fontSize,
      this.color_text,
      this.color_line,
      this.line_length,
      this.icon,
      this.newPage})
      : super(key: key);

  final String? SubjectWord;
  final double? fontSize;
  final Color? color_text;
  final Color? color_line;
  final double? line_length;
  final Icon? icon;
  final String? newPage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: icon ?? Icon(Icons.access_alarm_outlined),
          title: Text(
            SubjectWord ?? 'Subject',
            style: TextStyle(
              fontSize: fontSize ?? 20,
              color: color_text ?? Colors.pinkAccent,
            ),
          ),
          trailing: Column(
            children: [
              IconButton(
                onPressed: () {
                  // const Icon(Icons.person);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudetInformation_sub(),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios_rounded),
                iconSize: 30,
              ),
            ],
          ),
        ),
        Divider(
          height: 10,
          color: color_line ?? Color.fromARGB(255, 2, 22, 204),
          indent: line_length ?? 70,
          thickness: 1,
        ),
      ],
    );
  }
}
