part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState{
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required bool showErrorMessage,
    required Password password,
    required bool isSubmitting,
    required Option<Either<AuthFailure , Unit>> authFailureOrSuccessOption,
}) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
    emailAddress: EmailAddress(''),
    password: Password(''),
    showErrorMessage: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(),
  );
}