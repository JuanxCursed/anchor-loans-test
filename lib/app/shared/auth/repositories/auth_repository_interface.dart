import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepositoryInterface {
  Future<FirebaseUser> getUser();
  Future<FirebaseUser> getGoogleLogin();
  Future<FirebaseUser> getFacebookLogin();
  Future<FirebaseUser> getEmailPasswordLogin();
  Future getLogout();
}
