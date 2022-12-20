import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF8D8E98),
);

class IconContents extends StatelessWidget {
  IconContents({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Icon(
            icon,
            size: 80.0,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: labelTextStyle)
      ],
    );
  }
}
