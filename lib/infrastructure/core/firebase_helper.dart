import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd_bloc/domain/auth/i_auth_facade.dart';
import 'package:ddd_bloc/domain/core/error.dart';
import 'package:ddd_bloc/injection.dart';

extension FirestoreX on FirebaseFirestore {
  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws [NotAuthenticatedError].
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    print("user id ${user.id}");
    return FirebaseFirestore.instance.collection('users').doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');

  /// Nested subcollection under a [noteCollection]'s document.
  CollectionReference get todoCollection => collection('todos');
}
