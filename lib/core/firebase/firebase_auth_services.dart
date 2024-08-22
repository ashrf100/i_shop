import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:i_shop/firebase_options.dart';

class FirebaseAuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  /// Sign in with Google
  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(credential);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      _handleAuthException(e);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  /// Sign in with Facebook
  Future<User?> signInWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();
      if (result.status == LoginStatus.success) {
        final OAuthCredential credential =
            FacebookAuthProvider.credential(result.accessToken!.tokenString);
        final UserCredential userCredential =
            await _firebaseAuth.signInWithCredential(credential);
        return userCredential.user;
      } else {
        throw FirebaseAuthException(
            code: 'ERROR_FACEBOOK_LOGIN_FAILED',
            message: result.message ?? 'Facebook login failed');
      }
    } on FirebaseAuthException catch (e) {
      _handleAuthException(e);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  /// Handle Firebase Auth exceptions
  void _handleAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'account-exists-with-different-credential':
        throw FirebaseAuthException(
            code: 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL',
            message: 'Account already exists with a different credential');
      case 'invalid-credential':
        throw FirebaseAuthException(
            code: 'ERROR_INVALID_CREDENTIAL',
            message: 'The credential received is invalid');
      case 'operation-not-allowed':
        throw FirebaseAuthException(
            code: 'ERROR_OPERATION_NOT_ALLOWED',
            message: 'The operation is not allowed');
      case 'user-disabled':
        throw FirebaseAuthException(
            code: 'ERROR_USER_DISABLED', message: 'The user has been disabled');
      case 'user-not-found':
        throw FirebaseAuthException(
            code: 'ERROR_USER_NOT_FOUND',
            message: 'No user found with this email');
      case 'wrong-password':
        throw FirebaseAuthException(
            code: 'ERROR_WRONG_PASSWORD', message: 'Wrong password provided');
      default:
        throw FirebaseAuthException(
            code: 'ERROR_UNKNOWN', message: 'An unknown error occurred');
    }
  }
}
