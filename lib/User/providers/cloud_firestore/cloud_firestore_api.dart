import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_app/User/model/user.dart';

class CloudFirestoreAPI {
  final String USERS = 'users';
  final String PLACE = 'places';

  final FirebaseFirestore _db = FirebaseFirestore.instance;


  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USERS).doc(user.uid);
    return ref.set({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoUrl': user.photoUrl,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePlaces,
      'lastSignIn': DateTime.now()
    }, SetOptions(merge: true));
  }
  
}