

import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel_app/User/providers/firebase_auth_api.dart';

class AuthProvider {
  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<UserCredential> signInFirebase() => _firebaseAuthAPI.signIn();

  void signOutFirebase() => _firebaseAuthAPI.signOut();
}