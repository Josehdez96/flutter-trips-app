
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/floating_action_button_green.dart';

class CardImageWithFabIcon extends StatelessWidget {
  double height;
  double width;
  String pathImage;
  final double margLeft;
  final VoidCallback onPressFabIcon; // FAB Floating Action Button
  final IconData iconData;

  CardImageWithFabIcon({
    required this.pathImage,
    this.height = 250.0,
    this.width = 250.0,
    this.margLeft = 20.0,
    required this.iconData,
    required this.onPressFabIcon,
  });


  @override
  Widget build(BuildContext context) {
    print('SOY PATHIMAGE $pathImage');
    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        left: margLeft,
        bottom: 25.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: FileImage(File(pathImage))
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
      alignment: Alignment(0.8, 1),
      children: [
        card,
        FloatingActionButtonGreen(
          iconData: iconData,
          onPressed: onPressFabIcon,
        )
      ],
    );
  }
  
}