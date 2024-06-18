import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = _ExceedingLength;
  const factory ValueFailure.empty({required T failedValue}) = _Empty<T>;
  const factory ValueFailure.multiline({required T failedValue}) =
      _Multiline<T>;
  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = _ListTooLong<T>;
  const factory ValueFailure.invalidEmail({required T failedValue}) =
      _InvalidEmail<T>;
  const factory ValueFailure.shortPassword({required T failedValue}) =
      _ShortPassword<T>;
}
