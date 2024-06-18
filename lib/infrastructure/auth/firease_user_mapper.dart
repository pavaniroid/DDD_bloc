import 'package:ddd_bloc/domain/auth/current_user.dart';
import 'package:ddd_bloc/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebaseauth;
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseUserMapper {
  CurrentUser? toDomain(firebaseauth.User? _) {
    if (_ == null) {
      return null;
    } else {
      return CurrentUser(
      id: UniqueId.fromUniqueString(_.uid).toString(),
    );
    }
  }
}