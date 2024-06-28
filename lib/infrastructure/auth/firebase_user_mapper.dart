import 'package:ddd_bloc/domain/auth/current_user.dart';
import 'package:ddd_bloc/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebaseauth;
import 'package:injectable/injectable.dart';

@lazySingleton
extension FirebaseUserDomainX on firebaseauth.User {
User toDomain() {
  return User(
    id: UniqueId.fromUniqueString(uid),
  );
}
}
