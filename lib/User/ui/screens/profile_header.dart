import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:travel_app/User/bloc/bloc_user.dart';
import 'package:travel_app/User/model/user.dart';
import 'package:travel_app/User/ui/widgets/buttons_bar.dart';
import 'package:travel_app/User/ui/widgets/user_info.dart';

class ProfileHeader extends StatelessWidget {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        // print(snapshot);
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.active:
          case ConnectionState.done:
            return showProfileData(snapshot);
        }
      },
    );
  }


  Widget showProfileData(AsyncSnapshot snapshot) {
    const defaultMargins = EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      );

    if (!snapshot.hasData || snapshot.hasError) {
      // User no logged
      return Container(
      margin: EdgeInsets.only(
          left: 40.0,
          right: 40.0,
          top: 50.0
      ),
      child: Column(
        children: [
          CircularProgressIndicator(),
          Text('No se pudo cargar la información. Haz login')
        ],
      ),
    );
    } else {
      // Logged
      final title = Text(
        'Profile',
        style: TextStyle(
            fontFamily: 'Lato',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0
        ),
      );

      return Container(
        margin: defaultMargins,
        child: Column(
          children: [
            Row(
              children: [
                title
              ],
            ),
            UserInfo(
              User(
                name: snapshot.data.displayName,
                email: snapshot.data.email,
                photoUrl: snapshot.data.photoURL
              )
            ),
            ButtonsBar()
          ],
        ),
      );

    }
  }

}