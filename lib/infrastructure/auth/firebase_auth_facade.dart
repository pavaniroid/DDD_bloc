import 'package:dartz/dartz.dart';
import 'package:ddd_bloc/domain/auth/auth_failure.dart';
import 'package:ddd_bloc/domain/auth/current_user.dart';
import 'package:ddd_bloc/domain/auth/i_auth_facade.dart';
import 'package:ddd_bloc/domain/auth/value_objects.dart';
import 'package:ddd_bloc/infrastructure/auth/firebase_user_mapper.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebaseAuth;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade, env: [Environment.prod])
class FirebaseAuthFacade implements IAuthFacade {
  final firebaseAuth.FirebaseAuth _firebaseAuth;

  FirebaseAuthFacade(this._firebaseAuth);

  @override
  Future<Option<User>> getSignedInUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    return optionOf(firebaseUser?.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> registerEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(
              email: emailAddressStr ?? '', password: passwordStr ?? '')
          .then(
            (value) => right(unit),
          );
      // return right(unit);
    } on firebaseAuth.FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'operation-not-allowed') {
        return left(const AuthFailure.operationNotAllowed());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      print('sign in with email and password');
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr ?? '', password: passwordStr ?? '');
      print('exception');
      return right(unit);
    } on firebaseAuth.FirebaseAuthException catch (e) {
      print('e code is:- ${e.code}');
      if (e.code == 'wrong-password' ||
          e.code == 'user-not-found' ||
          e.code == 'invalid-credential') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        print('server error');
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signedOut() => Future.wait([
        _firebaseAuth.signOut(),
      ]);
}
