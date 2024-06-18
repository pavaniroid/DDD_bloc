import 'package:dartz/dartz.dart';
import 'package:ddd_bloc/domain/auth/auth_failure.dart';
import 'package:ddd_bloc/domain/auth/current_user.dart';
import 'package:ddd_bloc/domain/auth/value_objects.dart';


abstract class IAuthFacade {
  Future<Option<CurrentUser>> getSignedInUser();
  Future<void> signedOut();
  Future<Either<AuthFailure, Unit>> registerEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
}
