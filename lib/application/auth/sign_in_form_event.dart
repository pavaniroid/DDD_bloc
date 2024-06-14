part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanges(String emailStr) = _EmailChanged;
  const factory SignInFormEvent.passwordChanges(String passStr) = _PasswordChanged;
  const factory SignInFormEvent.registerWithEmailPassword() = _RegisterWithEmailPassword;
  const factory SignInFormEvent.signInWithEmailPassword() = _SignInWithEmailPassword;
}
