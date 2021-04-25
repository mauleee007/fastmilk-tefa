import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth;

  AuthServices(this._auth);

  Stream<User> get authStateChanges => _auth.idTokenChanges();

  Future<String> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "Logged In";
    } catch (e) {
      return e;
    }
  }

  // Future<void> signOut() async {
  //   try {
  //     await _auth.signOut();
  //   } catch (e) {
  //     return e;
  //   }
  // }
}
