import 'package:flutter/material.dart';
import 'package:travel_app/User/model/user.dart';

class Place {
  String? uid;
  String name;
  String description;
  String? urlImage;
  int? likes;
  User? userOwner;

  Place({
    Key? key,
    this.uid,
    required this.name,
    required this.description,
    this.urlImage,
    this.likes,
    this.userOwner
  });
}