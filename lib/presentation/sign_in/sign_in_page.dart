import 'package:auto_route/annotations.dart';
import 'package:ddd_bloc/application/auth/sign_in_form_bloc.dart';
import 'package:ddd_bloc/injection.dart';
import 'package:ddd_bloc/presentation/sign_in/widget/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: const SignInForm(),
      ),
    );
  }
}
