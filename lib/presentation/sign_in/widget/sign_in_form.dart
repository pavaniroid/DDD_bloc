import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ddd_bloc/application/auth/sign_in_form_bloc.dart';
import 'package:ddd_bloc/application/auth_bloc.dart';
import 'package:ddd_bloc/domain/auth/auth_failure.dart';
import 'package:ddd_bloc/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  Flushbar(
                    duration: const Duration(seconds: 3),
                    message: failure.map(
                      serverError: (_) => 'Server error',
                      emailAlreadyInUse: (_) => 'Email already in use',
                      invalidEmailAndPasswordCombination: (_) =>
                          'Invalid email and password combination',
                      operationNotAllowed: (OperationNotAllowed value) =>
                          'Invalid email and password combination',
                    ),
                  ).show(context);
                },
                (_) {
                  context.router
                      .replace(const PageRouteInfo(NotesOverviewRoute.name));
                  // context.router.pushNamed(Noti.name);
                  context
                      .read<AuthBloc>()
                      .add(const AuthEvent.authCheckRequested());
                },
              );
            },
          );
        },
        builder: (context, state) {
          if (state.isSubmitting) return const Center(child: CircularProgressIndicator());
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Form(
              autovalidateMode: state.showErrorMessage
                  ? AutovalidateMode.always
                  : AutovalidateMode.onUserInteraction,
              child: ListView(
                children: [
                  const Text(
                    'Sign IN / Sign UP',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    autocorrect: false,
                    onChanged: (value) => context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.emailChanges(value)),
                    validator: (_) => context
                        .read<SignInFormBloc>()
                        .state
                        .emailAddress
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid email',
                            orElse: () => '',
                          ),
                          (_) => null,
                        ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Password',
                    ),
                    autocorrect: false,
                    onChanged: (value) => context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.passwordChanges(value)),
                    validator: (_) => context
                        .read<SignInFormBloc>()
                        .state
                        .password
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Short Password',
                            orElse: () => '',
                          ),
                          (_) => null,
                        ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextButton(
                          onPressed: () => context.read<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithEmailPassword()),
                          child: const Text('SIGN IN'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextButton(
                          onPressed: () => context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .registerWithEmailPassword()),
                          child: const Text('REGISTER'),
                        ),
                      ),
                    ],
                  ),
                  // ElevatedButton(
                  //     onPressed: () {
                  //       context
                  //           .read<AuthBloc>()
                  //           .add(const AuthEvent.signedOut());
                  //     },
                  //     child: const Text('sign out'),),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
