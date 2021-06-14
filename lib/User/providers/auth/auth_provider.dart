

import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel_app/User/providers/auth/firebase_auth_api.dart';

class AuthProvider {
  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<User?> signInFirebase() => _firebaseAuthAPI.signIn();

  void signOutFirebase() => _firebaseAuthAPI.signOut();
}