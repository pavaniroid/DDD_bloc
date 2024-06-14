// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:ddd_bloc/application/auth/sign_in_form_bloc.dart' as _i7;
import 'package:ddd_bloc/domain/auth/i_auth_facade.dart' as _i5;
import 'package:ddd_bloc/infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'package:ddd_bloc/infrastructure/core/firebase_injectable_module.dart'
    as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i5.IAuthFacade>(
      () => _i6.FirebaseAuthFacade(gh<_i3.FirebaseAuth>()),
      registerFor: {_prod},
    );
    gh.factory<_i7.SignInFormBloc>(
        () => _i7.SignInFormBloc(gh<_i5.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i8.FirebaseInjectableModule {}
