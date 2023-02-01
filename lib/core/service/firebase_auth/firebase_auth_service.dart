import 'package:bagzz/models/login_response.dart';
import 'package:bagzz/models/user.dart';
import 'package:firebase_auth_platform_interface/src/auth_credential.dart';

abstract class FireBaseAuthService {
  Future<LoginResponse> loginWithEmail(
      {required String email, required String password});

  Future<LoginResponse> signUpWithEmail(
      {required String email,
      required String password,
      required String name,
      required String image});

  Future loginWithGoogle();

  Future<LoginResponse> loginWithFacebook();

  Future? loginWithTwitter();

  Future<void> logOut();

  Future<void> createUserIfNotExist(User user);

  Future<void> saveTokenToDatabase({required String token});

}
