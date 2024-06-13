import 'package:dartz/dartz.dart';
import 'package:ddd_bloc/domain/auth/auth_failure.dart';
import 'package:ddd_bloc/domain/auth/value_objects.dart';
import 'package:flutter/foundation.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
}
