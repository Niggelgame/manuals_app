import 'package:firebase_auth/firebase_auth.dart';

/*abstract class AuthRepository {
  Stream<User>
}*/


class SignupFailure implements Exception {}

class AuthRepository {
  AuthRepository({
    FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  final FirebaseAuth _firebaseAuth;

  Stream<User> get user {
    return _firebaseAuth.authStateChanges();
  }

  Future<void> login() async {
    try {
      await _firebaseAuth.signInAnonymously();
    } catch (e) {
      throw SignupFailure();
    }
  }
}
