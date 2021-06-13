import 'package:flutter/material.dart';

import 'header_appbar.dart';
import '../widgets/description_place.dart';
import 'package:travel_app/Place/ui/widgets/review_list.dart';

class HomeTrips extends StatelessWidget {
  final descriptionPlace = "Lorem ipsum dolor sit amet, consectetur adipiscing elit Phasellus id semper enim. Morbi nec felis vitae enim molestie sagittis id eu sem. Nulla nibh quam, commodo ac arcu a, dictum rutrum nunc. \n\nEtiam eget libero semper, feugiat sem quis, interdum libero";

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            ListView(
              children: [
                DescriptionPlace(
                  namePlace: 'Bahamas',
                  desciptionPlace: descriptionPlace,
                  stars: 4
                ),
                ReviewList()
              ],
            ),
            HeaderAppBar()
          ],
        );
  }
  
}