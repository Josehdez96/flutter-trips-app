
import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 20.0,
        right: 20.0,
        bottom: 15.0
      ),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Navigation'))
          );
        },
        child: Container(
          height: 50.0,
          width: 180.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584CD1)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
            )
          ),
          child: Center(
            child: Text(
              'Navigate',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lato',
                fontSize: 18.0
              ),
            ),
          ),
        ),
      ),
    );
  }

}