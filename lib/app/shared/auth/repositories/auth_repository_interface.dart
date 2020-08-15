import 'package:anchor_loans_test/app/shared/auth/models/authentication_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepositoryInterface {
  Future<FirebaseUser> getUser();
  Future<FirebaseUser> getGoogleLogin();
  Future<FirebaseUser> getFacebookLogin();
  Future<FirebaseUser> getEmailPasswordLogin(AuthenticationModel auth);
  Future<FirebaseUser> signInWithEmailAndPassword(AuthenticationModel auth);
  Future<FirebaseUser> signUpWithEmailAndPassword(AuthenticationModel auth);
  Future getLogout();
}
