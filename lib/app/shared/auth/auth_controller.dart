import 'package:anchor_loans_test/app/shared/auth/models/authentication_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:anchor_loans_test/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final AuthRepositoryInterface _authRepository = Modular.get();

  @observable
  AuthStatus status = AuthStatus.loading;

  @observable
  FirebaseUser user;

  _AuthControllerBase() {
    _authRepository.getUser().then(setUser).catchError((e) {
      print('_AuthControllerBase@constructor error');
    });
  }

  @action
  setUser(FirebaseUser value) {
    user = value;
    status = user == null ? AuthStatus.logout : AuthStatus.login;
  }

  @action
  Future loginWithGoogle() async {
    user = await _authRepository.getGoogleLogin();
  }

  @action
  Future loginWithEmailAndPassword(AuthenticationModel auth) async {
    user = await _authRepository.getEmailPasswordLogin(auth);
  }

  @action
  Future logout() {
    return _authRepository.getLogout();
  }
}

enum AuthStatus { loading, login, logout }
