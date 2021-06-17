import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel_app/Place/model/place.dart';
import 'package:travel_app/User/model/user.dart' as userModel;

class CloudFirestoreAPI {
  final String USERS = 'users';
  final String PLACES = 'places';

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;


  void updateUserData(userModel.User user) async {
    DocumentReference ref = _db.collection(USERS).doc(user.uid);
    return await ref.set({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoUrl': user.photoUrl,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePlaces,
      'lastSignIn': DateTime.now()
    }, SetOptions(merge: true));
  }

  Future<void> updatePlaceData(Place place) async {
    CollectionReference refPlaces = _db.collection(PLACES);
    User? user = _auth.currentUser;
    refPlaces.add({
        'name': place.name,
        'description': place.description,
        'likes': place.likes,
        'userOwner': '$USERS/${user!.uid}' // reference
      });
  }
  
}