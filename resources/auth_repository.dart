import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepository({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  Stream<User?> get user => _firebaseAuth.userChanges();

  Future<UserCredential> signInWithEmail(String email, String password) async {
    try {
      return await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw Exception(_mapErrorCode(e.code));
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  String _mapErrorCode(String code) {
    switch (code) {
      case 'user-not-found':
        return 'No existe usuario registrado con este correo.';
      case 'wrong-password':
        return 'Contraseña incorrecta.';
      default:
        return 'Error de autenticación: $code';
    }
  }
}
