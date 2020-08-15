import 'package:anchor_loans_test/app/shared/auth/models/authentication_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_repository_interface.dart';

class AuthRepositoryFirebase implements AuthRepositoryInterface {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<FirebaseUser> getEmailPasswordLogin(AuthenticationModel auth) async {
    print(auth);
    AuthResult result = await _auth.signInWithEmailAndPassword(
      email: auth.email,
      password: auth.password,
    );
    final FirebaseUser user = result.user;

    return user;
  }

  @override
  Future<FirebaseUser> signUpWithEmailAndPassword(
      AuthenticationModel auth) async {
    var result = await _auth.createUserWithEmailAndPassword(
        email: auth.email, password: auth.password);
    return result.user;
  }

  @override
  // ignore: missing_return
  Future<FirebaseUser> getFacebookLogin() {}

  @override
  Future<FirebaseUser> getGoogleLogin() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );

    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;

    print("signed in with google" + user.displayName);
    return user;
  }

  @override
  Future<FirebaseUser> getUser() {
    return _auth.currentUser();
  }

  @override
  Future getLogout() {
    return _auth.signOut();
  }

  @override
  Future<FirebaseUser> signInWithEmailAndPassword(
      AuthenticationModel auth) async {
    var result = await _auth.signInWithEmailAndPassword(
        email: auth.email, password: auth.password);
    return result.user;
  }
}
