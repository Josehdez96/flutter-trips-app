import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget {
  final width;
  final height;
  final text;
  final VoidCallback? onPressed;

  ButtonGreen({
    required this.width,
    required this.height,
    required this.text,
    this.onPressed
    });


  @override
  _ButtonGreenState createState() => _ButtonGreenState();
}

class _ButtonGreenState extends State<ButtonGreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height,
        width: widget.width,
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFFa7ff84),
              Color(0xFF1cbb78)
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Lato',
              fontSize: 18.0
            ),
          ),
        ),
      ),
    );
  }
}