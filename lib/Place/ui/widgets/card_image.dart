
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('https://static.platzi.com/media/tmp/class-files/git/curso-flutter-platzi/Curso-de-Flutter-en-Platzi-9.ImagenDecorada/platzi_trips_app/assets/img/river.jpeg')
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      )
    );
    
    return Stack(
      alignment: Alignment(0.8, 1.17),
      children: [
        card,
        FloatingActionButtonGreen()
      ],
    );
  }
  
}