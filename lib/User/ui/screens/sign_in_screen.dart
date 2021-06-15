import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'package:travel_app/User/bloc/bloc_user.dart';
import 'package:travel_app/User/model/user.dart' as userModel;
import 'package:travel_app/my_trips_app.dart';
import 'package:travel_app/widgets/button_green.dart';
import 'package:travel_app/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  late UserBloc userBloc;
  late double screenWidth;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    screenWidth = MediaQuery.of(context).size.width;
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) { // Once the data/stream has been received, execute the builder
        // snapshot contains the data
        if(!snapshot.hasData | snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return MyTripsApp();
        }
      },
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack(height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  width: screenWidth,
                  child: Text(
                    'Welcome \nThis is your Travel App',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 37.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                  ),
                )
              ),
              ButtonGreen(
                width: 300.0,
                height: 50.0,
                text: 'Login with Gmail',
                onPressed: () { 
                  userBloc.signIn()
                  .then((User? user) {
                    userBloc.updateUserData(
                      userModel.User(
                        uid: user!.uid,
                        name: user.displayName,
                        email: user.email,
                        photoUrl: user.photoURL,
                      )
                    );
                  });
                 }
              )
            ],
          )
        ],
      ),
    );
  }
}