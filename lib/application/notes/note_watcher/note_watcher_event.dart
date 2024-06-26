part of 'note_watcher_bloc.dart';

@freezed
class NoteWatcherEvent with _$NoteWatcherEvent {
  const factory NoteWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory NoteWatcherEvent.watchUncompletedAllStarted() = _WatchUncompletedAllStarted;
  const factory NoteWatcherEvent.notesReceived(Either<NoteFailure,KtList<Note>> failureOrSuccess) = _NotesReceived;
}
