import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _authe = FirebaseAuth.instance;

  Future<UserCredential> signInWithCredential(AuthCredential credential) =>
      _authe.signInWithCredential(credential);
  Future<void> logout() => _authe.signOut();
  Stream<User?> get currentUser => _authe.authStateChanges();
}