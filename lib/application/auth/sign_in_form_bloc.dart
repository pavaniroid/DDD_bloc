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
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        emailChanges: (value) async {
          emit(state.copyWith(
            emailAddress: EmailAddress(value.emailStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        passwordChanges: (value) async {
          emit(state.copyWith(
            password: Password(value.passStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        registerWithEmailPassword: (value) async {
          await _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.registerEmailAndPassword,
            emit,
          );
        },
        signInWithEmailPassword: (value) async {
          await _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.signInWithEmailAndPassword,
            emit,
          );
        },
      );
    });
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
      })
      forwardedCall,
      Emitter<SignInFormState> emit,
      ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessage: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}

