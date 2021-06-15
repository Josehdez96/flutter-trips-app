
import 'package:flutter/material.dart';
import 'package:travel_app/Place/ui/widgets/card_image_list.dart';
import 'package:travel_app/widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        GradientBack(height: 250.0),
        CardImageList()
      ],
    );
  }
  
}