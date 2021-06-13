import 'package:flutter/material.dart';
import 'package:travel_app/User/ui/screens/profile_header.dart';
import 'package:travel_app/User/ui/widgets/profile_background.dart';
import 'package:travel_app/User/ui/widgets/profile_place_list.dart';

class ProfileTrips extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
            ProfilePlacesList()
          ],
        ),
      ],
    );
  }

}