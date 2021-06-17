
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:travel_app/Place/model/place.dart';
import 'package:travel_app/User/providers/auth/auth_provider.dart';
import 'package:travel_app/User/providers/cloud_firestore/cloud_firestore_provider.dart';
import 'package:travel_app/User/model/user.dart' as userModel;


// It handles all user use cases
class UserBloc implements Bloc {
  final _authProvider = new AuthProvider();
  final _cloudFirestore = new CloudFirestoreProvider();

  // 1. Login
  Future<User?> signIn() => _authProvider.signInFirebase();
  void signOut() => _authProvider.signOutFirebase();

  // Stream - Flujo de datos... in this case, it comes from Firebase
  // Streamcontroller
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges(); // listener when authStateChange
  Stream<User?> get authStatus => streamFirebase; // getter from the above listener

  // 2. Register user in the DB
  void updateUserData(userModel.User user) => _cloudFirestore.updateUserDataFirestore(user);
  Future<void> updatePlaceDate(Place place) => _cloudFirestore.updatePlaceData(place);


  @override
  void dispose() {
    // 
  }
  
}