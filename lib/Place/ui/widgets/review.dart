import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final pathImage = 'assets/img/people.jpg';
  final user;
  final userDetails;
  final comments;

  Review({this.user, this.userDetails, this.comments});

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      child: CircleAvatar(
        backgroundImage: AssetImage(pathImage),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        left: 2.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 15.0,
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        user,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 17.0,
        ),
      ),
    );

    final details = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        this.userDetails,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userComments = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        comments,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 13.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        SizedBox(height: 5.0),
        Row(
          children: [
            details,
            Container(
              margin: EdgeInsets.only(
                left: 5.0
              ),
              child: Row(
                children: [
                  star,
                  star,
                  star,
                  star,
                  star
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 5.0),
        userComments
      ],
    );


    return Row(
      children: [
        photo,
        userDetails
        ]
    );
  }
  
}