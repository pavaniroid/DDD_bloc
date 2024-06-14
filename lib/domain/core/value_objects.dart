import 'package:dartz/dartz.dart';
import 'package:ddd_bloc/domain/core/error.dart';
import 'package:ddd_bloc/domain/core/failures.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id == identity - same as writing (right) => right
    return value.fold((failure) => throw UnexpectedValueError(failure), id);
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject<T> &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'value: $value';
  }
}
