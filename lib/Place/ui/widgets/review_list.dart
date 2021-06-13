import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(user: 'Juan Arciniegas', userDetails: '1 review - 5 photos', comments: 'There is an amazing place in Sri lanka'),
        Review(user: 'Jose Hernandez', userDetails: '2 review - 2 photos', comments: 'It is so nice there'),
        Review(user: 'Varuna Yasas', userDetails: '0 review - 7 photos', comments: 'I enjoyed very much')
      ],
    );
  }
  
}