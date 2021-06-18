import 'dart:io';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:travel_app/Place/ui/screens/add_place_screen.dart';
import 'package:travel_app/User/bloc/bloc_user.dart';
import 'package:travel_app/User/ui/widgets/circle_button.dart';

class ButtonsBar extends StatelessWidget {

  late final UserBloc userBloc;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 10.0
        ),
        child: Row(
          children: [
            CircleButton(true, Icons.vpn_key, 20.0, Color.fromRGBO(255, 255, 255, 0.95),
            () => {}),
            CircleButton(false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1),
            () {
              picker.getImage(source: ImageSource.camera)
                .then((pickedImage) {
                  if (pickedImage != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => AddPlaceScreen(image: File(pickedImage.path)))
                    );
                  } else {
                    print('Nada fue seleccionado');
                  }
                  
                })
                .catchError((dynamic onError) { print(onError); });
            }),
            CircleButton(true, Icons.exit_to_app, 20.0, Color.fromRGBO(255, 255, 255, 0.95),
            () => { userBloc.signOut() })
          ],
        )
    );
  }

}