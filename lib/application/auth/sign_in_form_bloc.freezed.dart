// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanges,
    required TResult Function(String passStr) passwordChanges,
    required TResult Function() registerWithEmailPassword,
    required TResult Function() signInWithEmailPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanges,
    TResult? Function(String passStr)? passwordChanges,
    TResult? Function()? registerWithEmailPassword,
    TResult? Function()? signInWithEmailPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanges,
    TResult Function(String passStr)? passwordChanges,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanges,
    required TResult Function(_PasswordChanged value) passwordChanges,
    required TResult Function(_RegisterWithEmailPassword value)
        registerWithEmailPassword,
    required TResult Function(_SignInWithEmailPassword value)
        signInWithEmailPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanges,
    TResult? Function(_PasswordChanged value)? passwordChanges,
    TResult? Function(_RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult? Function(_SignInWithEmailPassword value)? signInWithEmailPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanges,
    TResult Function(_PasswordChanged value)? passwordChanges,
    TResult Function(_RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(_SignInWithEmailPassword value)? signInWithEmailPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res, SignInFormEvent>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res, $Val extends SignInFormEvent>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanges(emailStr: $emailStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanges,
    required TResult Function(String passStr) passwordChanges,
    required TResult Function() registerWithEmailPassword,
    required TResult Function() signInWithEmailPassword,
  }) {
    return emailChanges(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanges,
    TResult? Function(String passStr)? passwordChanges,
    TResult? Function()? registerWithEmailPassword,
    TResult? Function()? signInWithEmailPassword,
  }) {
    return emailChanges?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanges,
    TResult Function(String passStr)? passwordChanges,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    required TResult orElse(),
  }) {
    if (emailChanges != null) {
      return emailChanges(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanges,
    required TResult Function(_PasswordChanged value) passwordChanges,
    required TResult Function(_RegisterWithEmailPassword value)
        registerWithEmailPassword,
    required TResult Function(_SignInWithEmailPassword value)
        signInWithEmailPassword,
  }) {
    return emailChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanges,
    TResult? Function(_PasswordChanged value)? passwordChanges,
    TResult? Function(_RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult? Function(_SignInWithEmailPassword value)? signInWithEmailPassword,
  }) {
    return emailChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanges,
    TResult Function(_PasswordChanged value)? passwordChanges,
    TResult Function(_RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(_SignInWithEmailPassword value)? signInWithEmailPassword,
    required TResult orElse(),
  }) {
    if (emailChanges != null) {
      return emailChanges(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInFormEvent {
  const factory _EmailChanged(final String emailStr) = _$EmailChangedImpl;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String passStr});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passStr = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == passStr
          ? _value.passStr
          : passStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl(this.passStr);

  @override
  final String passStr;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanges(passStr: $passStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.passStr, passStr) || other.passStr == passStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanges,
    required TResult Function(String passStr) passwordChanges,
    required TResult Function() registerWithEmailPassword,
    required TResult Function() signInWithEmailPassword,
  }) {
    return passwordChanges(passStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanges,
    TResult? Function(String passStr)? passwordChanges,
    TResult? Function()? registerWithEmailPassword,
    TResult? Function()? signInWithEmailPassword,
  }) {
    return passwordChanges?.call(passStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanges,
    TResult Function(String passStr)? passwordChanges,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    required TResult orElse(),
  }) {
    if (passwordChanges != null) {
      return passwordChanges(passStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanges,
    required TResult Function(_PasswordChanged value) passwordChanges,
    required TResult Function(_RegisterWithEmailPassword value)
        registerWithEmailPassword,
    required TResult Function(_SignInWithEmailPassword value)
        signInWithEmailPassword,
  }) {
    return passwordChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanges,
    TResult? Function(_PasswordChanged value)? passwordChanges,
    TResult? Function(_RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult? Function(_SignInWithEmailPassword value)? signInWithEmailPassword,
  }) {
    return passwordChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanges,
    TResult Function(_PasswordChanged value)? passwordChanges,
    TResult Function(_RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(_SignInWithEmailPassword value)? signInWithEmailPassword,
    required TResult orElse(),
  }) {
    if (passwordChanges != null) {
      return passwordChanges(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInFormEvent {
  const factory _PasswordChanged(final String passStr) = _$PasswordChangedImpl;

  String get passStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterWithEmailPasswordImplCopyWith<$Res> {
  factory _$$RegisterWithEmailPasswordImplCopyWith(
          _$RegisterWithEmailPasswordImpl value,
          $Res Function(_$RegisterWithEmailPasswordImpl) then) =
      __$$RegisterWithEmailPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailPasswordImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$RegisterWithEmailPasswordImpl>
    implements _$$RegisterWithEmailPasswordImplCopyWith<$Res> {
  __$$RegisterWithEmailPasswordImplCopyWithImpl(
      _$RegisterWithEmailPasswordImpl _value,
      $Res Function(_$RegisterWithEmailPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterWithEmailPasswordImpl implements _RegisterWithEmailPassword {
  const _$RegisterWithEmailPasswordImpl();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmailPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanges,
    required TResult Function(String passStr) passwordChanges,
    required TResult Function() registerWithEmailPassword,
    required TResult Function() signInWithEmailPassword,
  }) {
    return registerWithEmailPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanges,
    TResult? Function(String passStr)? passwordChanges,
    TResult? Function()? registerWithEmailPassword,
    TResult? Function()? signInWithEmailPassword,
  }) {
    return registerWithEmailPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanges,
    TResult Function(String passStr)? passwordChanges,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    required TResult orElse(),
  }) {
    if (registerWithEmailPassword != null) {
      return registerWithEmailPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanges,
    required TResult Function(_PasswordChanged value) passwordChanges,
    required TResult Function(_RegisterWithEmailPassword value)
        registerWithEmailPassword,
    required TResult Function(_SignInWithEmailPassword value)
        signInWithEmailPassword,
  }) {
    return registerWithEmailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanges,
    TResult? Function(_PasswordChanged value)? passwordChanges,
    TResult? Function(_RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult? Function(_SignInWithEmailPassword value)? signInWithEmailPassword,
  }) {
    return registerWithEmailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanges,
    TResult Function(_PasswordChanged value)? passwordChanges,
    TResult Function(_RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(_SignInWithEmailPassword value)? signInWithEmailPassword,
    required TResult orElse(),
  }) {
    if (registerWithEmailPassword != null) {
      return registerWithEmailPassword(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailPassword implements SignInFormEvent {
  const factory _RegisterWithEmailPassword() = _$RegisterWithEmailPasswordImpl;
}

/// @nodoc
abstract class _$$SignInWithEmailPasswordImplCopyWith<$Res> {
  factory _$$SignInWithEmailPasswordImplCopyWith(
          _$SignInWithEmailPasswordImpl value,
          $Res Function(_$SignInWithEmailPasswordImpl) then) =
      __$$SignInWithEmailPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithEmailPasswordImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignInWithEmailPasswordImpl>
    implements _$$SignInWithEmailPasswordImplCopyWith<$Res> {
  __$$SignInWithEmailPasswordImplCopyWithImpl(
      _$SignInWithEmailPasswordImpl _value,
      $Res Function(_$SignInWithEmailPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithEmailPasswordImpl implements _SignInWithEmailPassword {
  const _$SignInWithEmailPasswordImpl();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanges,
    required TResult Function(String passStr) passwordChanges,
    required TResult Function() registerWithEmailPassword,
    required TResult Function() signInWithEmailPassword,
  }) {
    return signInWithEmailPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanges,
    TResult? Function(String passStr)? passwordChanges,
    TResult? Function()? registerWithEmailPassword,
    TResult? Function()? signInWithEmailPassword,
  }) {
    return signInWithEmailPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanges,
    TResult Function(String passStr)? passwordChanges,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    required TResult orElse(),
  }) {
    if (signInWithEmailPassword != null) {
      return signInWithEmailPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanges,
    required TResult Function(_PasswordChanged value) passwordChanges,
    required TResult Function(_RegisterWithEmailPassword value)
        registerWithEmailPassword,
    required TResult Function(_SignInWithEmailPassword value)
        signInWithEmailPassword,
  }) {
    return signInWithEmailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanges,
    TResult? Function(_PasswordChanged value)? passwordChanges,
    TResult? Function(_RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult? Function(_SignInWithEmailPassword value)? signInWithEmailPassword,
  }) {
    return signInWithEmailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanges,
    TResult Function(_PasswordChanged value)? passwordChanges,
    TResult Function(_RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(_SignInWithEmailPassword value)? signInWithEmailPassword,
    required TResult orElse(),
  }) {
    if (signInWithEmailPassword != null) {
      return signInWithEmailPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailPassword implements SignInFormEvent {
  const factory _SignInWithEmailPassword() = _$SignInWithEmailPasswordImpl;
}

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      bool showErrorMessage,
      Password password,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? showErrorMessage = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInFormStateImplCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$SignInFormStateImplCopyWith(_$SignInFormStateImpl value,
          $Res Function(_$SignInFormStateImpl) then) =
      __$$SignInFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      bool showErrorMessage,
      Password password,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$SignInFormStateImplCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$SignInFormStateImpl>
    implements _$$SignInFormStateImplCopyWith<$Res> {
  __$$SignInFormStateImplCopyWithImpl(
      _$SignInFormStateImpl _value, $Res Function(_$SignInFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? showErrorMessage = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$SignInFormStateImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$SignInFormStateImpl implements _SignInFormState {
  const _$SignInFormStateImpl(
      {required this.emailAddress,
      required this.showErrorMessage,
      required this.password,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final bool showErrorMessage;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, showErrorMessage: $showErrorMessage, password: $password, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFormStateImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, showErrorMessage,
      password, isSubmitting, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      __$$SignInFormStateImplCopyWithImpl<_$SignInFormStateImpl>(
          this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final EmailAddress emailAddress,
      required final bool showErrorMessage,
      required final Password password,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$SignInFormStateImpl;

  @override
  EmailAddress get emailAddress;
  @override
  bool get showErrorMessage;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
