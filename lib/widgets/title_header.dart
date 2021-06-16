import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {
  final String title;

  TitleHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Lato',
        fontSize: 30.0,
        fontWeight: FontWeight.w900
      ),
    );
  }
}