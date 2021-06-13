import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  bool mini;
  var icon;
  double iconSize;
  var color;
  VoidCallback? onPressed;

  CircleButton(this.mini, this.icon, this.iconSize, this.color, this.onPressed);

  @override
  State<StatefulWidget> createState() {
    return _CircleButton();
  }
}

class _CircleButton extends State<CircleButton> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
          backgroundColor: widget.color,
          mini: widget.mini,
          onPressed: widget.onPressed,
          child: Icon(
            widget.icon,
            size: widget.iconSize,
            color: Color(0xFF4268D3),
          ),
        )
    );
  }
}