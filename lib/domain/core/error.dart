import 'package:ddd_bloc/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);
  @override
  String toString() {
    const explanation =
        'Encountered a valueFailure at an unrecoverable point. Terminating. ';
    return Error.safeToString('$explanation Failure was :$valueFailure');
  }
}
