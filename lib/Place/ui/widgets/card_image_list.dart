
import 'package:flutter/material.dart';

import 'card_image_with_fab_icon.dart';

class CardImageList extends StatelessWidget {
  String defaultPathImage = 'https://static.platzi.com/media/tmp/class-files/git/curso-flutter-platzi/Curso-de-Flutter-en-Platzi-9.ImagenDecorada/platzi_trips_app/assets/img/river.jpeg';
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImageWithFabIcon(
            pathImage: defaultPathImage,
            iconData: Icons.favorite_border,
            onPressFabIcon: () => {},
          ),
          CardImageWithFabIcon(
            pathImage: defaultPathImage,
            iconData: Icons.favorite_border,
            onPressFabIcon: () => {}
          ),
          CardImageWithFabIcon(
            pathImage: defaultPathImage,
            iconData: Icons.favorite_border,
            onPressFabIcon: () => {}
          ),
          CardImageWithFabIcon(
            pathImage: defaultPathImage,
            iconData: Icons.favorite_border,
            onPressFabIcon: () => {}
          ),
          CardImageWithFabIcon(
            pathImage: defaultPathImage,
            iconData: Icons.favorite_border,
            onPressFabIcon: () => {}
          )
        ],
      ),
    );
  }
  
}