
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:travel_app/User/providers/auth_provider.dart';

// It handles all user use cases
class UserBloc implements Bloc {
  final _authProvider = new AuthProvider();

  Future<UserCredential> signIn() {
    return _authProvider.signInFirebase();
  }

  void signOut() => _authProvider.signOutFirebase();

  // Stream - Flujo de datos... in this case, it comes from Firebase
  // Streamcontroller
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges(); // listener when authStateChange
  Stream<User?> get authStatus => streamFirebase; // getter from the above listener



  @override
  void dispose() {
    // 
  }
  
}