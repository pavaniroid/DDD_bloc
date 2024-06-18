part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(CurrentUser user) = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
}