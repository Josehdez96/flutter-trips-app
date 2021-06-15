import 'dart:io';

import 'package:flutter/material.dart';
import 'package:travel_app/widgets/gradient_back.dart';

class AddPlaceScreen extends StatefulWidget {
  File? image;

  AddPlaceScreen({required this.image});

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GradientBack(height: 300.0),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox( // Create an Icon with better clickeable or touchable behavior
                  width: 45.0,
                  height: 45.0,
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: 45.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}