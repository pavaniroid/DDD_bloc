import 'package:dartz/dartz.dart';
import 'package:ddd_bloc/domain/core/failures.dart';
import 'package:ddd_bloc/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required UniqueId id,
  }) = _User;
}
