import 'dart:io';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:travel_app/Place/model/place.dart';
import 'package:travel_app/Place/ui/widgets/card_image_with_fab_icon.dart';
import 'package:travel_app/Place/ui/widgets/text_input_location.dart';
import 'package:travel_app/User/bloc/bloc_user.dart';
import 'package:travel_app/widgets/button_purple.dart';
import 'package:travel_app/widgets/gradient_back.dart';
import 'package:travel_app/widgets/text_input.dart';
import 'package:travel_app/widgets/title_header.dart';

class AddPlaceScreen extends StatefulWidget {
  File image;

  AddPlaceScreen({required this.image});

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = BlocProvider.of(context);
    double screenWidth = MediaQuery.of(context).size.width;
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();
    final _controllerLocationPlace = TextEditingController();

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
              ),
              Flexible( // It makes overflow/overload proof child, in this case, the container/title
                child: Container(
                  width: screenWidth,
                  padding: EdgeInsets.only(
                    top: 45,
                    left: 20,
                    right: 10
                  ),
                  child: TitleHeader(title: 'Add a new Place'),
                )
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 120.0, bottom: 20.0),
            child: ListView(
              children: [
                Container( //foto
                  alignment: Alignment.center,
                  child: CardImageWithFabIcon(
                    width: 330.0,
                    height: 240.0,
                    iconData: Icons.camera_alt,
                    onPressFabIcon: () => {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextInput(
                    hintText: 'Title',
                    inputType: null,
                    controller: _controllerTitlePlace,
                    maxLines: 1,
                  ),
                ),
                TextInput(
                  hintText: 'Description',
                  inputType: TextInputType.multiline,
                  controller: _controllerDescriptionPlace,
                  maxLines: 4,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextInputLocation(
                    hintText: 'Add location',
                    iconData: Icons.location_on_outlined,
                    controller: _controllerLocationPlace
                  ),
                ),
                Container(
                  width: 20.0,
                  child: ButtonPurple(
                    buttonText: 'Add Place',
                    onPressed: () { 
                      userBloc.updatePlaceDate(Place(
                        name: _controllerTitlePlace.text,
                        description: _controllerDescriptionPlace.text,
                        likes: 0,
                        
                      )).whenComplete(() {
                        print('TERMINÓ');
                        Navigator.pop(context);
                      });
                     }
                  ),
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}