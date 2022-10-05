import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import '../../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    this.text,
    required this.icon,
    this.press,
    this.IconArrow,
  }) : super(key: key);

  final String? text;
  final String icon;
  final VoidCallback? press;
  final Icon? IconArrow;

  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: kPrimaryColor,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: kPrimaryColor,
              width: 22,
            ),
            const SizedBox(width: 20),
            Expanded(child: Text(text ?? "thoning information")),
            IconArrow ?? Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
