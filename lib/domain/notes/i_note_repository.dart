import 'package:dartz/dartz.dart';
import 'package:ddd_bloc/domain/notes/note.dart';
import 'package:ddd_bloc/domain/notes/note_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class INoteRepository {
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  // Future<Either<NoteFailure, List<APIResponse>>> getAPIData();
  // Future<Either<NoteFailure, Response>> getBeerAPIData({required int page});

  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
}
