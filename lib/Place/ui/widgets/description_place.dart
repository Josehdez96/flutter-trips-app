import 'package:flutter/material.dart';
import 'package:travel_app/widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  String desciptionPlace;
  int stars;

  DescriptionPlace({
    required this.namePlace,
    required this.stars,
    required this.desciptionPlace});


  @override
  Widget build(BuildContext context) {
    final start_empty = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final start_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final title_stars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 330.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            star,
            start_empty
          ],
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        desciptionPlace,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_stars,
        description,
        ButtonPurple()
      ],
    );
  }
  
}