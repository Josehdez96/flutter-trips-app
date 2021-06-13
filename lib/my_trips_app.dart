
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'package:travel_app/Place/ui/screens/home_trips.dart';
import 'package:travel_app/Place/ui/screens/search_trips.dart';
import 'package:travel_app/User/bloc/bloc_user.dart';
import 'package:travel_app/User/ui/screens/profile_trips.dart';


class MyTripsApp extends StatefulWidget {
  @override
  _MyTripsApp createState() => _MyTripsApp();
}

class _MyTripsApp extends State<MyTripsApp> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    BlocProvider(
      child: ProfileTrips(), 
      bloc: UserBloc()
    )
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print('Hice build por primera vez o hice rebuild'); // This builder executes (SI lo hace) every time that index changes
    return Scaffold(
      body: widgetsChildren[indexTap], // Problem with Firebase stream update is here, the provider only wraps up the initial Widget with index = 0, the another two don't (SOLVED)
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: indexTap,
          onTap: onTapTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            )
          ],
        ),
      ),
    );
  }

}
