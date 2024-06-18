import 'package:ddd_bloc/domain/auth/current_user.dart';
import 'package:ddd_bloc/domain/auth/i_auth_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (e) async {
          final userOption = await _authFacade.getSignedInUser();
          emit(userOption.fold(
            () => const AuthState.unAuthenticated(),
            (user) => AuthState.authenticated(user),
          ));
        },
        signedOut: (e) async {
          await _authFacade.signedOut();
          print('sign out');
          emit(const AuthState.unAuthenticated());
        },
      );
    });
  }
}
