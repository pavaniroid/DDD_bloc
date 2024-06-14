import 'package:dartz/dartz.dart';
import 'package:ddd_bloc/domain/auth/auth_failure.dart';
import 'package:ddd_bloc/domain/auth/i_auth_facade.dart';
import 'package:ddd_bloc/domain/auth/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) {
      event.map(
        emailChanges: (value) async* {
          emit(state.copyWith(
            emailAddress: EmailAddress(value.emailStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        passwordChanges: (value) async* {
          emit(state.copyWith(
            password: Password(value.passStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        registerWithEmailPassword: (value) async* {
          yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.registerEmailAndPassword,
          );
        },
        signInWithEmailPassword: (value) async* {
          yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.signInWithEmailAndPassword,
          );
        },
      );
    });
  }
  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    }) forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessage: true,
      authFailureOrSuccessOption: optionOf(
          failureOrSuccess), //same as this // failureOrSuccess == null ? none() : some(failureOrSuccess),
    );
  }
}
