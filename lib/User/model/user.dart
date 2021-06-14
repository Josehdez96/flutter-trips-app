
import 'package:flutter/material.dart';
import 'package:travel_app/Place/model/place.dart';

class User {
  String? uid;
  dynamic name;
  dynamic email;
  dynamic photoUrl;
  List<Place>? myPlaces;
  List<Place>? myFavoritePlaces;

  User({
    Key? key,
    this.uid,
    required this.name,
    required this.email,
    required this.photoUrl,
    this.myPlaces,
    this.myFavoritePlaces
  });
}