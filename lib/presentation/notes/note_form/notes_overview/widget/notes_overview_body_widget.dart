import 'package:ddd_bloc/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:ddd_bloc/domain/notes/note.dart';
import 'package:ddd_bloc/presentation/notes/note_form/notes_overview/widget/critical_failure_display_widget.dart';
import 'package:ddd_bloc/presentation/notes/note_form/notes_overview/widget/error_note_card_widget.dart';
import 'package:ddd_bloc/presentation/notes/note_form/notes_overview/widget/notes_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewBody extends StatelessWidget {
  const NotesOverviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const CircularProgressIndicator(),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final note = state.notes[index];
                if (note.failureOption.isSome()) {
                  print('isSome');
                  return ErrorNoteCard(note: note);
                } else {
                  print('isNone');
                  return NotesCardWidget(
                    note: note,
                  );
                }
              },
              itemCount: state.notes.size,
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              failure: state.noteFailure,
            );
          },
        );
      },
    );
  }
}
